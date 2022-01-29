import 'dart:async';
import 'package:flutter/material.dart';

class Rainbow extends StatefulWidget {
  @override
  _AnimatingBg1State createState() => _AnimatingBg1State();
}

class _AnimatingBg1State extends State<Rainbow>
    with TickerProviderStateMixin {
  List<Color> colorList = [
    Colors.red,
    Colors.deepOrange,
    Colors.deepOrangeAccent,
    Colors.orange,
    Colors.orangeAccent,
    Colors.yellowAccent,
    Colors.yellow,
    Colors.lightGreenAccent,
    Colors.lightGreen,
    Colors.green,
    Colors.lightBlueAccent,
    Colors.lightBlue,
    Colors.blue,
    Colors.blueAccent,
    Colors.deepPurpleAccent,
    Colors.deepPurple,
    Colors.purple,
    Colors.purpleAccent,
  ];
  List<Alignment> alignmentList = [Alignment.topCenter, Alignment.bottomCenter];
  int index = 0;
  Color bottomColor = Colors.red;
  Color topColor = Colors.purple;
  Alignment begin = Alignment.bottomCenter;
  Alignment end = Alignment.topCenter;

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(microseconds: 0),
          () {
        setState(
              () {
            bottomColor = Color(0xff33267C);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 2),
      onEnd: () {
        setState(
              () {
            index = index + 1;
            bottomColor = colorList[index % colorList.length];
            topColor = colorList[(index + 1) % colorList.length];
          },
        );
      },
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: begin,
          end: end,
          colors: [bottomColor, topColor],
        ),
      ),
    );
  }
}