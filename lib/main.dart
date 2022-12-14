import 'package:artesanias/navegacion/home.dart';
import 'package:artesanias/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:artesanias/rutas/paginas.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Artesanías',
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''), // English, no country code
        Locale('es', ''), // Spanish, no country code
      ],
      locale: Locale('en', ''),
      home: Home(), 
      debugShowCheckedModeBanner: false,
      routes: Paginas.route,
    );
  } //fin del metodo build
}//fin de la clase MyApp