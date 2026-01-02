import 'package:flutter/material.dart';
import 'package:medinavi_mac/l10n/app_localizations.dart';
import 'package:medinavi_mac/main.dart';

void languageSelection(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(AppLocalizations.of(context)!.chooseLanguage),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: const Text('English'),
              onTap: () {
                Navigator.pop(context);
                MyApp.setLocale(context, const Locale('en'));
                _showSnackBar(context, 'English is selected');
              },
            ),
            ListTile(
              title: const Text('Japanese'),
              onTap: () {
                Navigator.pop(context);
                MyApp.setLocale(context, const Locale('ja'));
                _showSnackBar(context, 'Japanese is selected');
              },
            ),
            ListTile(
              title: const Text('Chinese'),
              onTap: () {
                Navigator.pop(context);
                MyApp.setLocale(context, const Locale('zh'));
                _showSnackBar(context, 'Chinese is selected');
              },
            ),
          ],
        ),
      );
    },
  );
}

void _showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Center(child: Text(message)),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
  );
}
