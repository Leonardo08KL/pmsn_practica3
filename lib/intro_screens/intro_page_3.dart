import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(250, 201, 255, 1.0),
      child: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          Lottie.network(
            'https://lottie.host/b7d065bf-d432-412f-af9f-f5c8f3a33ef2/PdhtkiDFX1.json',
            height: 130,
            width: 130,
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              '¡Visítanos en nuestra ubicación principal o contáctanos en línea!',
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Divider(),
          // Text('Like button with count and count:'),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              '''Dirección: \nTechEmporium\nCalle: Mercurio, Número 123\nCiudad: Villagrán GTO, País: México\n¡¡¡Dale like!!!''',
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          LikeButton(
            likeBuilder: (isLiked) => isLiked
                ? const Icon(Icons.thumb_up)
                : const Icon(Icons.thumb_up_outlined),
            likeCount: 100,
          ),
          const Divider(),
          // Text('Set isLiked=null to make it possible to like multiple times:'),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              '''Horario de Atención:\nLunes a Viernes: 9:00 am - 7:00 pm\nSábado y Domingo: 10:00 am - 5:00 pm\n¡¡¡Dale me gusta para aumentar el número!!!''',
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          LikeButton(
            likeBuilder: (isLiked) => const Icon(Icons.thumb_up),
            likeCount: 996,
            isLiked: null,
            countBuilder: (likeCount, isLiked, text) {
              if (likeCount == 0) {
                return const Text('like');
              } else {
                return Text(
                  likeCount! >= 1000
                      ? '${(likeCount / 1000.0).toStringAsFixed(1)}k'
                      : text,
                );
              }
            },
          ),
          const Divider(),
        ],
      ),
    );
  }
}
