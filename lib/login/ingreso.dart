import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Ingreso extends StatelessWidget {
  const Ingreso({super.key});

  @override
  Widget build(BuildContext context) {
    final ancho = MediaQuery.of(context).size.width;
    final alto = MediaQuery.of(context).size.height;

    bool isDesktop(BuildContext context) => ancho >= 600;
    bool isMobile(BuildContext context) => ancho < 600;

    return Scaffold(
      appBar: AppBar(
        title: Text('Artesanías "La Quebrada"'),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: Stack(
        children: [
          Fondo(),
          cuerpo(),
        ],
      ),
    );
  } //fin del metodo build
} //fin de la clase ingreso

Widget cuerpo() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Bienvenido a tu cuenta',
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
            letterSpacing: 1.5,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Datos(),
      ],
    ),
  );
}

class Datos extends StatefulWidget {
  const Datos({super.key});

  @override
  State<Datos> createState() => _DatosState();
}

class _DatosState extends State<Datos> {
  bool obs = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.welcome,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'usuario@gmail.com'),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Contraseña',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            obscureText: obs,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: '°°°°°°°',
              suffixIcon: IconButton(
                icon: Icon(Icons.remove_red_eye_outlined),
                onPressed: () {
                  setState(() {
                    obs == true ? obs = true : obs = false;
                  });
                },
              ),
            ),
          ),
          Remember(),
          SizedBox(
            height: 30,
          ),
          Botones(),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
    );
  }
}

class Remember extends StatelessWidget {
  bool valor = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: valor,
          onChanged: (value) {},
        ),
        Text('Recuerdame'),
        Spacer(),
        TextButton(
          onPressed: () {},
          child: Text('¿Has olvidado tu contraseña?'),
        ),
      ],
    );
  }
}

class Botones extends StatelessWidget {
  const Botones({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 83, 72, 53)),
            ),
          ),
        ),
        SizedBox(
          height: 25,
          width: double.infinity,
        ),
        Text(
          'O entra con; ',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: 25,
          width: double.infinity,
        ),
        Container(
          width: double.infinity,
          height: 50,
          child: OutlinedButton(
            onPressed: () {},
            child: Text(
              'Inicia sesion con Google',
              style: TextStyle(
                color: Color(0xff142047),
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 25,
          width: double.infinity,
        ),
        Container(
          width: double.infinity,
          height: 50,
          child: OutlinedButton(
            onPressed: () {},
            child: Text(
              'Inicia sesion con Facebook',
              style: TextStyle(
                color: Color(0xff142047),
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Fondo extends StatelessWidget {
  const Fondo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color.fromARGB(255, 179, 137, 107),
          Color.fromARGB(255, 145, 103, 56)
        ],
        begin: Alignment.centerRight,
        end: Alignment.centerLeft,
      )),
    );
  }
}
