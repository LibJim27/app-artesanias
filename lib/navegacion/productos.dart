import 'package:flutter/material.dart';

class Artesanias extends StatelessWidget {
  final String imageRuta;
  final String producto;
  final String nombre;
  final String precio;
  final String descripcionTitulo;
  final String descripcionDetallada;
  const Artesanias({super.key,
    required this.imageRuta,
    required this.producto,
    required this.nombre,
    required this.precio,
    required this.descripcionTitulo,
    required this.descripcionDetallada,});

  @override
  Widget build(BuildContext context) {
    final ancho = MediaQuery.of(context).size.width;
    final alto = MediaQuery.of(context).size.height;

    bool isDesktop(BuildContext context) => ancho >= 600;
    bool isMobile(BuildContext context) => ancho <600;
    return Scaffold(
      
      body: Column(
        children: [
          Expanded(
            child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(imageRuta), 
                    )

                ),
              ),
              Container(
                width: double.infinity,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.white, 
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)
                  )
                ),
              )
            ],
          ),

          ),
          Expanded(
          flex:1,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              color: Colors.white,
              child: Column(
                children: [
                  Text(producto, textAlign: TextAlign.start, style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4,
                  ),
                  ),
                  Text(nombre, textAlign: TextAlign.start, style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4,
                  ),
                  ),
                  SizedBox(height: 5,),
                  Text(precio, textAlign: TextAlign.start, style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4,
                  ),
                  ),
                  SizedBox(height: 5,),
                  Text(descripcionTitulo, textAlign: TextAlign.start, style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4,
                  ),
                  ),
                  Text(descripcionDetallada, textAlign: TextAlign.justify, 
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 4,
                  ),
                  )
                ],
              ),

            ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12 , vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.lime.shade900,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text("Comprar", style: TextStyle(
                      color: Colors.white, 
                      fontSize: 20,

                    ),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Text("Back"),)
                ],
              )
              )
        ],
      ),
    );
  }// fin del metodo build
}// fin de la clase