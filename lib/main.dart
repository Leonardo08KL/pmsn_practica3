import 'package:flutter/material.dart';
import 'package:pmsn_practica3/pages/onboarding_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practica 3',
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}
