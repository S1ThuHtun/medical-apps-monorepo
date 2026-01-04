import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'package:medinavi_mac/l10n/app_localizations.dart';
import 'package:medinavi_mac/screens/sign_up_screen.dart';
import 'package:medinavi_mac/screens/startup_screen.dart';
import 'package:medinavi_mac/screens/home_screen.dart';
import 'package:medinavi_mac/screens/main_navigation_screen.dart';
import 'package:medinavi_mac/services/notification_service.dart'; // ⭐ ADD THIS LINE

import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding
          .ensureInitialized();
  FlutterNativeSplash.preserve(
    widgetsBinding: widgetsBinding,
  );

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions
        .currentPlatform,
  );

  // ⭐ ADD THESE 2 LINES - Initialize notification service for medicine reminders
  await NotificationService()
      .initialize();
  await NotificationService()
      .requestPermissions();

  // TESTING ONLY - Remove this after testing
  // This will reset the first-time user experience
  // await _resetFirstTimeUser(); // Commented out for login testing

  await Future.delayed(
    const Duration(seconds: 2),
  );
  FlutterNativeSplash.remove();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() =>
      _MyAppState();

  static void setLocale(
    BuildContext context,
    Locale newLocale,
  ) {
    _MyAppState? state =
        context.findAncestorStateOfType<
            _MyAppState>();
    state?.setLocale(newLocale);
  }
}

class _MyAppState extends State<MyApp> {
  Locale _locale = const Locale('en');

  @override
  void initState() {
    super.initState();
    _loadSavedLocale();
  }

  Future<void>
      _loadSavedLocale() async {
    final prefs =
        await SharedPreferences
            .getInstance();
    final savedLanguage =
        prefs.getString(
                'selectedLanguage') ??
            'en';
    if (!mounted) return;
    setState(() {
      _locale = Locale(savedLanguage);
    });
  }

  void setLocale(Locale locale) async {
    setState(() {
      _locale = locale;
    });
    // Save the selected language
    final prefs =
        await SharedPreferences
            .getInstance();
    await prefs.setString(
      'selectedLanguage',
      locale.languageCode,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MediNavi',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor:
            Colors.white,
      ).copyWith(
        colorScheme:
            ColorScheme.fromSeed(
          seedColor:
              const Color.fromARGB(
            255,
            39,
            156,
            41,
          ),
        ),
      ),
      locale: _locale,
      supportedLocales: AppLocalizations
          .supportedLocales,
      localizationsDelegates:
          AppLocalizations
              .localizationsDelegates,
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance
            .authStateChanges(),
        builder: (context, snapshot) {
          print(
              '🔄 StreamBuilder state: ${snapshot.connectionState}');
          print(
              '📊 Has data: ${snapshot.hasData}');
          print(
              '👤 User: ${snapshot.data?.email}');

          // Loading State - Firebase is still processing
          if (snapshot
                  .connectionState ==
              ConnectionState.waiting) {
            print(
                '⏳ Waiting for Firebase auth...');
            return const Scaffold(
              body: Center(
                child:
                    CircularProgressIndicator(),
              ),
            );
          }

          // If there is an Error during Firebase connection
          if (snapshot.hasError) {
            print(
                '❌ Auth error: ${snapshot.error}');
            return Scaffold(
              body: Center(
                child: Text(
                  'Error: ${snapshot.error}',
                  style:
                      const TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
            );
          }

          // When the user is logged in, go to MainNavigationScreen
          if (snapshot.hasData &&
              snapshot.data != null) {
            print(
                '✅ User logged in! Email: ${snapshot.data!.email}');
            print(
                '🏠 Navigating to MainNavigationScreen...');
            return const MainNavigationScreen();
          }

          print(
              '❌ No user logged in, checking first-time status...');

          // User is NOT logged in - Check if first time user
          return FutureBuilder<bool>(
            future: _isFirstTimeUser(),
            builder: (context,
                futureSnapshot) {
              // Loading while checking first-time status
              if (futureSnapshot
                      .connectionState ==
                  ConnectionState
                      .waiting) {
                return const Scaffold(
                  body: Center(
                    child:
                        CircularProgressIndicator(),
                  ),
                );
              }

              final isFirstTime =
                  futureSnapshot.data ??
                      true;

              // First time user - Show StartupScreen (with language selection)
              if (isFirstTime) {
                return const StartupScreen();
              }

              // Returning user (not logged in) - Show SignUpScreen directly
              return const SignUpScreen();
            },
          );
        },
      ),
    );
  }

  // Check if this is the first time user is opening the app
  Future<bool>
      _isFirstTimeUser() async {
    final prefs =
        await SharedPreferences
            .getInstance();
    final hasSeenStartup =
        prefs.getBool(
                'hasSeenStartup') ??
            false;
    return !hasSeenStartup;
  }
}

// 🧪 TESTING FUNCTION - For development only
// This resets the first-time user experience
// ignore: unused_element
Future<void>
    _resetFirstTimeUser() async {
  final prefs = await SharedPreferences
      .getInstance();
  await prefs.remove('hasSeenStartup');
  print(
      '✅ Reset complete! App will show StartupScreen again.');
}
