import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:you_music/screens/home_page.dart';

void main() {
  runApp(const MainMusicPage());
}

class MainMusicPage extends StatelessWidget {
  const MainMusicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Localizations Sample App',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''), // English, no country code
        Locale('es', ''), // Spanish, no country code
      ],
      // supportedLocales: S.delegate.supportedLocales,
      home: HomePage(),
    );
  }
}
