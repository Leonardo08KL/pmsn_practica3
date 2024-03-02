import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color.fromRGBO(145, 208, 255, 1.0), // Color de fondo de la pantalla
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(50.0),
              child: Text(
                'Hola',
                style: TextStyle(
                  fontSize: 60,
                  color: Colors.black,
                ),
              ),
            ),
            Center(
              child: Lottie.network(
                'https://lottie.host/27b71ffd-2910-4c54-a8b3-b81ac1bd2ac6/nUjw7NGQN5.json',
                height: 400,
                width: 400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
