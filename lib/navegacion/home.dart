import 'package:artesanias/login/ingreso.dart';
import 'package:flutter/material.dart';
import 'package:artesanias/rutas/routers.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

//Agregar Splash https://www.youtube.com/watch?v=PQB1E2JLZJA

//Botones Menu https://www.youtube.com/watch?v=eVXX7TtPMws
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final ancho = MediaQuery.of(context).size.width;
    final alto = MediaQuery.of(context).size.height;

    bool isDesktop(BuildContext context) => ancho >= 600;
    bool isMobile(BuildContext context) => ancho <600;
    return Scaffold(
      
     
      backgroundColor: Color.fromARGB(255, 166, 132, 104),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
      leading: Icon(Icons.production_quantity_limits_sharp, color: Colors.brown,),
      title: Text("Productos"),
      onTap: () {
           Navigator.pushNamed(context, Routers.pro);
      }
      ),
      ListTile(
      leading: Icon(Icons.contact_page, color: Colors.brown,),
      title: Text("Contacto"),
      onTap: () {
          Navigator.pushNamed(context, Routers.cont);
      }
      ),
      ListTile(
      leading: Icon(Icons.login, color: Colors.brown,),
      title: Text("Ingreso"),
      onTap: () {
          Navigator.pushNamed(context, Routers.ing);
      }
      ),
          ],
        ),

      ),
      appBar: AppBar(
      
        title: Text("Artesanías La Quebrada"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 124, 113, 89),
      ),
    
    body:  cuerpo(context), 
    
    );
  }//fin del metodo build
}//fin del la clase Home

Widget cuerpo(BuildContext context){
  return ListView(
  children: [
    
    Expanded(
      child: Text(""),
      ),
    Expanded(
      child: Text(AppLocalizations.of(context).bienvenida,textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Schyler')),
      ),
      Expanded(
      child: Text(""),
      ),
    Expanded(
      child: Text(AppLocalizations.of(context).nosotros, textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Schyler'))
      ),
    Expanded(
      child: Text(""),
      ),
      Expanded(
      child: Image(
        image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/La_Quebrada%2C_Acapulco%2C_Guerrero_%2824685190940%29.jpg/1200px-La_Quebrada%2C_Acapulco%2C_Guerrero_%2824685190940%29.jpg'),
        width: 500,
        height: 300,
      ),
      
    ),
    
      

  ],
);
}
