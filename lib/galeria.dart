import 'package:flutter/material.dart';
import 'package:artesanias/navegacion/productos.dart';

List<ImageDetails> _images = [
  ImageDetails(
      imageRuta:
          'https://http2.mlstatic.com/D_NQ_NP_921805-MLM49960369599_052022-O.webp',
      producto: 'Llaveros',
      nombre: 'Llavero Económico',
      precio: '\$10.00',
      descripcionTitulo: 'Descripción',
      descripcionDetallada:
          'En nuestro local se pueden encontrar llaveros desde \$10.00. Este llavero es el más económico hecho de plástico, dentro del plástico se encuentra una pequeña porción de arena del mar del bello puerto de Acapulco junto al nombre de la ciudad para que sus familiares y amigos puedan comprobar que efectivamente han visitado el puerto'),
  ImageDetails(
      imageRuta:
          'https://http2.mlstatic.com/D_NQ_NP_855606-MLM50367026807_062022-W.jpg',
      producto: 'Llaveros',
      nombre: 'Llavero metálico',
      precio: '\$30.00',
      descripcionTitulo: 'Descripción',
      descripcionDetallada:
          'Nuestro llavero metálico es uno de los más buscados por el turista que le gusta llevar un buen recuerdo a familiares y amigos, aquellos que de verdad les gusta coleccionar este tipo de souvenirs. Este llavero es uno de los más resistentes, puedes llevarlo a cualquier lado sin miedo de que se pueda caer o romper, y por ende, que puedas extraviarlo'),
  ImageDetails(
      imageRuta:
          'https://http2.mlstatic.com/D_922306-MLM50895337739_072022-F.webp',
      producto: 'LLavero',
      nombre: 'LLavero Destapador',
      precio: '\$40.00',
      descripcionTitulo: 'Descripción',
      descripcionDetallada:
          'Para aquellos que les gusta disfrutar de la fiesta y al mismo tiempo contar con un buen llavero, tenemos nuestros llaveros que incluyen destapador para esas ocasiones en las que no se tiene un destapador a la mano y quieres disfrutar de una buena bebida, este llavero puede ser de gran ayuda, es práctico y fácil de usar.'),
          ImageDetails(
      imageRuta:
          'https://http2.mlstatic.com/D_NQ_NP_745370-MLM48188130146_112021-W.jpg',
      producto: 'Taza',
      nombre: 'Taza Económica',
      precio: '\$55.00',
      descripcionTitulo: 'Descripción',
      descripcionDetallada:
          'Nuestras tazas economicas, hechas y pintadas artesanalmente. Son una de las mejores tazas que puede encontrar en nuestro puerto, ya que cuentan con un gran tamaño para aprovechar aun más nuestra bebida favorita, al mismo tiempo que disfruta de un buen diseño que le hará recordar todos los momentos vividos en esta bella ciudad'),
          ImageDetails(
      imageRuta:
          'https://http2.mlstatic.com/D_NQ_NP_709780-MLM48163717589_112021-W.jpg',
      producto: 'Tazas',
      nombre: 'Taza con postal',
      precio: '\$85.00',
      descripcionTitulo: 'Descripción',
      descripcionDetallada:
          'Muchas veces queremos un buen recuerdo de Acapulco como fotos, comida, llaveros, etc. Y qué mejor que poder llevar tu recuerdo con una foto integrada, así es como le presentamos nuestra taza con postal de Acapulco, con diferentes diseños usted puede escoger la que más le agrade')
];
class Catalogo extends StatelessWidget {
  const Catalogo({super.key});

  @override
  Widget build(BuildContext context) {
    final ancho = MediaQuery.of(context).size.width;
    final alto = MediaQuery.of(context).size.height;

    bool isDesktop(BuildContext context) => ancho >= 600;
    bool isMobile(BuildContext context) => ancho <600;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Productos"),
        leading: IconButton(
          onPressed: (){
            if(Navigator.canPop(context)){
              Navigator.pop(context);
            }
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      backgroundColor: Colors.blueGrey [700] ,
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30)
              )
            ),
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10), 
            itemBuilder: (BuildContext context, int index) {
              return RawMaterialButton(
                onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: 
                  (context)=> Artesanias(
                    imageRuta: _images [index].imageRuta,
                    producto: _images[index].producto,
                    nombre: _images[index].nombre,
                    precio: _images[index].precio,
                    descripcionTitulo: _images[index].descripcionTitulo,
                    descripcionDetallada: _images[index].descripcionDetallada,
                  )));
                },
                
                child: Hero(tag: "logo", 
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: NetworkImage(_images[index].imageRuta),
                      fit: BoxFit.cover,
                      )
                  ),
                )),
                );
              },
              itemCount: _images.length,
            ),
          )
          )
        ],) ),
    );
  }//fin del metodo build
}//fin de la clase Muestrario

class ImageDetails {
  final String imageRuta;
  final String producto;
  final String nombre;
  final String precio;
  final String descripcionTitulo;
  final String descripcionDetallada;
  ImageDetails({
    required this.imageRuta,
    required this.producto,
    required this.nombre,
    required this.precio,
    required this.descripcionTitulo,
    required this.descripcionDetallada,
  });
}
