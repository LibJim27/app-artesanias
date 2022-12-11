import 'package:artesanias/galeria.dart';
import 'package:artesanias/navegacion/home.dart';
import 'package:artesanias/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:artesanias/login/ingreso.dart';
import 'package:artesanias/navegacion/home.dart';
import 'package:artesanias/rutas/paginas.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Artesanías',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),  
      routes: Paginas.route,
    );
  }//fin del metodo build
}//fin de la clase MyApp