import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'package:medinavi_mac/l10n/app_localizations.dart';
import 'package:medinavi_mac/screens/sign_up_screen.dart';
import 'package:medinavi_mac/screens/startup_screen.dart';
import 'package:medinavi_mac/screens/home_screen.dart';
import 'package:medinavi_mac/screens/main_navigation_screen.dart';

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

  // 笞・・TESTING ONLY - Remove this after testing
  // This will reset the first-time user experience
  // await _resetFirstTimeUser(); // Commented out for login testing

  await Future.delayed(
    Duration(seconds: 2),
  );
  FlutterNativeSplash.remove();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() =>
      _MyAppState();

  static void setLocale(
    context,
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
              'selectedLanguage',
            ) ??
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
            '剥 StreamBuilder state: ${snapshot.connectionState}',
          );
          print(
            '剥 Has data: ${snapshot.hasData}',
          );
          print(
            '剥 User: ${snapshot.data?.email}',
          );

          // Loading State - Firebase is still processing
          if (snapshot
                  .connectionState ==
              ConnectionState.waiting) {
            print(
              '竢ｳ Waiting for Firebase auth...',
            );
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
              '笶・Auth error: ${snapshot.error}',
            );
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

          // When the user is logged in, it will go to the HomeScreen.
          if (snapshot.hasData &&
              snapshot.data != null) {
            print(
              '笨・User logged in! Email: ${snapshot.data!.email}',
            );
            print(
              '笨・Navigating to HomeScreen...',
            );
            return const MainNavigationScreen();
          }

          print(
            '側 No user logged in, checking first-time status...',
          );

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
              'hasSeenStartup',
            ) ??
            false;
    return !hasSeenStartup;
  }
}

// 笞・・TESTING FUNCTION - For development only
// This resets the first-time user experience
// ignore: unused_element
Future<void>
    _resetFirstTimeUser() async {
  final prefs = await SharedPreferences
      .getInstance();
  await prefs.remove('hasSeenStartup');
  print(
    '笨・Reset complete! App will show StartupScreen again.',
  );
}
