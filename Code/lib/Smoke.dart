import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';

class Smoke extends StatefulWidget {

  @override
  _Background6State createState() => _Background6State();
}

class _Background6State extends State<Smoke>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return AnimatedBackground(
      behaviour: RandomParticleBehaviour(),
      vsync: this,
      child: Text(""),
    );
  }
}