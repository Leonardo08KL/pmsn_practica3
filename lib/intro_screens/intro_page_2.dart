import 'package:flutter/material.dart';
import 'package:pmsn_practica3/model/dart.dart';
import 'package:pmsn_practica3/pages/square.dart';

class IntroPage2 extends StatefulWidget {
  @override
  _IntroPage2State createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage2> {
  final List<String> _post = [
    '''En TechCoatl, ofrecemos una amplia gama de productos tecnológicos para satisfacer todas tus necesidades:''',
    '''Computadoras: Desde laptops ultraportátiles hasta potentes PC para gaming, tenemos una variedad de opciones para cada usuario, incluyendo marcas reconocidas y modelos personalizables según tus preferencias.''',
    '''Teléfonos Celulares: Descubre los últimos modelos de smartphones de marcas líderes, con características innovadoras, diseños elegantes y un rendimiento excepcional. Desde dispositivos premium hasta opciones más asequibles, tenemos el teléfono perfecto para ti.''',
    '''Componentes Electrónicos: Amplía y mejora tu equipo con nuestra selección de componentes electrónicos de alta calidad, que incluyen procesadores, tarjetas gráficas, unidades de almacenamiento y más. Personaliza tu experiencia tecnológica y maximiza el rendimiento de tus dispositivos con nuestras opciones de vanguardia.''',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Color de fondo
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
            child: NotificationListener<ScrollNotification>(
              onNotification: (notification) {
                if (notification is ScrollUpdateNotification) {
                  setState(() {});
                }
                return false;
              },
              child: ListView.builder(
                itemCount: _post.length, // Ajustado al tamaño de _post
                itemBuilder: (context, index) {
                  if (index < listCelular.length) {
                    // Verifica el índice
                    final celular = listCelular[index];
                    return MySquare(
                      imagePath: celular.listImage[index].image,
                      text: _post[index],
                      color: celular.listImage[index].color,
                    );
                  } else {
                    return SizedBox(); // Si el índice excede, devuelve un widget vacío
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
