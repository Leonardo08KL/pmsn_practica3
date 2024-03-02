import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Stack(
        children: [
          // Container(
          //   decoration: const BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage('assets/celulares/pantalla1.jpg'),
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
          Center(
            child: Lottie.network(
              height: 500,
              width: 500,
              'https://lottie.host/6e197610-68f9-48e1-b24c-7e81283801ba/7HT31xsHCm.json',
            ),
          ),
          const Positioned(
            top: 50,
            left: 50,
            right: 50,
            child: Center(
              child: Text(
                '¡Bienvenido a TechCoatl!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const Positioned(
            top: 150,
            left: 50,
            right: 50,
            child: Center(
              child: Text(
                '''En TechCoatl nos enorgullece ser tu destino número uno para todo lo relacionado con la tecnología.''',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
