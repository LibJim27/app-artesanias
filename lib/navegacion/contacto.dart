import 'package:flutter/material.dart';

class Contacto extends StatelessWidget {
  const Contacto({super.key});

  @override
  Widget build(BuildContext context) {
    final ancho = MediaQuery.of(context).size.width;
    final alto = MediaQuery.of(context).size.height;

    bool isDesktop(BuildContext context) => ancho >= 600;
    bool isMobile(BuildContext context) => ancho <600;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 199, 143, 123),
        title: Text("Contacto"),
        leading: IconButton(
          onPressed: (){
            if(Navigator.canPop(context)){
              Navigator.pop(context);
            }
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      body: Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: const <Widget>[
    Icon(
      Icons.facebook,
      color: Colors.blue,
      size: 24.0,
      semanticLabel: 'Text to announce in accessibility modes',
    ),
    Icon(
      Icons.phone,
      color: Colors.red,
      size: 30.0,
    ),
    Icon(
      Icons.mail,
      color: Colors.grey,
      size: 36.0,
    ),
  ],
)
    );
  }//fin del metodo build
}//fin de la clase Pagina2
