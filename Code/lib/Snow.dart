import 'package:flutter/material.dart';
import 'package:particles_flutter/particles_flutter.dart';

class Snow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snow Background',
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
      backgroundColor: Color(0xffffffff),
      body: CircularParticle(
        width: w,
        height: h,
        numberOfParticles: 200,
        connectDots: false,
        isRandSize: true,
        onTapAnimation: false,
        speedOfParticles: 1,
        awayAnimationDuration: Duration(milliseconds: 600),
        awayAnimationCurve: Curves.easeInCubic,
        isRandomColor: true,
        randColorList: [
          Colors.grey.shade400,
          Color(0xffb2d6db)
        ],
      ),
    );
  }
}
