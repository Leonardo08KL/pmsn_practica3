import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MySquare extends StatelessWidget {
  const MySquare({
    super.key,
    required this.imagePath,
    required this.text,
    required this.color,
  });

  final String imagePath;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0),
      child: Container(
        height: 800,
        decoration: BoxDecoration(
          color: color, // Fondo del contenedor
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Text(
                text,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
            Center(
              child: Lottie.network(
                height: 350,
                width: 350,
                imagePath,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
