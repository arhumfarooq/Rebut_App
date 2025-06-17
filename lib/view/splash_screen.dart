import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
final screenheight = MediaQuery.of(context).size.height;
final screenwidth = MediaQuery.of(context).size.width;


    return Scaffold(
      body: SizedBox(
        height: screenheight,
        width: screenwidth,
        child: Image.asset('assets//splash.png')),
    );
  }
}