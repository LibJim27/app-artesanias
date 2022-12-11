import 'package:artesanias/galeria.dart';
import 'package:flutter/material.dart';
import 'package:artesanias/navegacion/home.dart';
import 'package:artesanias/navegacion/productos.dart';
import 'package:artesanias/navegacion/contacto.dart';
import 'package:artesanias/rutas/routers.dart';
import 'package:artesanias/login/ingreso.dart';
abstract class Paginas{
    static Map<String, Widget Function(BuildContext)> route ={
      Routers.home:(BuildContext context) => Home(),
      Routers.pro:(BuildContext context) => Catalogo(),  
      Routers.cont:(BuildContext context) => Contacto(),  
      Routers.ing: (BuildContext context) => Ingreso(),  
    };
}