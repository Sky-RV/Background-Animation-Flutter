import 'package:flutter/material.dart';
import 'package:particles_flutter/particles_flutter.dart';

class Customize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Customize Background',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xb2e2dddd),
      body: CircularParticle(
        width: w,
        height: h,
        isRandomColor: true,
        randColorList: [
          Colors.red,
          Colors.deepOrange,
          Colors.orange,
          Colors.orangeAccent,
          Colors.yellow,
          Colors.yellowAccent
        ],
        connectDots: false,
        isRandSize: false,
        onTapAnimation: true,
        particleColor: Colors.green, // what for?
        speedOfParticles: 1,
        numberOfParticles: 200,
        awayAnimationDuration: Duration(milliseconds: 600), // what for?
        awayAnimationCurve: Curves.elasticOut, // what for?
        hoverColor: Colors.grey,
        enableHover: true,
        maxParticleSize: 15,
      ),
    );
  }
}
