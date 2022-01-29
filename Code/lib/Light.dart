// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Light extends StatefulWidget {
//   @override
//   _AnimatingBgState createState() => _AnimatingBgState();
// }
//
// class _AnimatingBgState extends State<Light>
//     with TickerProviderStateMixin {
//   @override
//   void initState() {
//     super.initState();
//
//     _bc = AnimationController(
//       duration: const Duration(seconds: 7),
//       vsync: this,
//     )..repeat();
//     ba = CurvedAnimation(parent: _bc, curve: Curves.easeIn);
//   }
//
//   late Animation<double> ba;
//
//   late AnimationController _bc;
//
//   AlignmentTween aT =
//   AlignmentTween(begin: Alignment.topRight, end: Alignment.topLeft);
//   AlignmentTween aB =
//   AlignmentTween(begin: Alignment.bottomRight, end: Alignment.bottomLeft);
//
//   Animatable<Color> darkBackground = TweenSequence<Color>(
//     [
//       TweenSequenceItem(
//         weight: .5,
//         tween: ColorTween(
//           begin: smalt.withOpacity(.8),
//           end: oldRose.withOpacity(.8),
//         ),
//       ),
//       TweenSequenceItem(
//         weight: .5,
//         tween: ColorTween(
//           begin: oldRose.withOpacity(.8),
//           end: smalt.withOpacity(.8),
//         ),
//       ),
//     ],
//   );
//
//   Animatable<Color> normalBackground = TweenSequence<Color>(
//     [
//       TweenSequenceItem(
//         weight: .5,
//         tween: ColorTween(
//           begin: smalt.withOpacity(.6),
//           end: oldRose.withOpacity(.6),
//         ),
//       ),
//       TweenSequenceItem(
//         weight: .5,
//         tween: ColorTween(
//           begin: oldRose.withOpacity(.6),
//           end: smalt.withOpacity(.6),
//         ),
//       ),
//     ],
//   );
//
//   Animatable<Color> lightBackground = TweenSequence<Color>(
//     [
//       TweenSequenceItem(
//         weight: .5,
//         tween: ColorTween(
//           begin: smalt.withOpacity(.4),
//           end: oldRose.withOpacity(.4),
//         ),
//       ),
//       TweenSequenceItem(
//         weight: .5,
//         tween: ColorTween(
//           begin: oldRose.withOpacity(.4),
//           end: smalt.withOpacity(.4),
//         ),
//       ),
//     ],
//   );
//
//   @override
//   Widget build(BuildContext context) {
//     double _w = MediaQuery.of(context).size.width;
//     double _h = MediaQuery.of(context).size.height;
//     return AnimatedBuilder(
//       animation: ba,
//       builder: (context, child) {
//         return Scaffold(
//           body: Container(
//             width: _w,
//             height: _h,
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: aT.evaluate(ba),
//                 end: aB.evaluate(ba),
//                 colors: [
//                   darkBackground.evaluate(ba),
//                   normalBackground.evaluate(ba),
//                   lightBackground.evaluate(ba),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
//
// Color smalt = Color(0xff121856);
// Color oldRose = Color(0xffD23756);

import 'dart:async';
import 'package:flutter/material.dart';

class Light extends StatefulWidget {
  @override
  _AnimatingBg1State createState() => _AnimatingBg1State();
}

class _AnimatingBg1State extends State<Light>
    with TickerProviderStateMixin {
  List<Color> colorList = [
    Color(0xffffa9a9),
    Color(0xffdc9073),
    Color(0xffeae4aa),
    Color(0xffb7e08a),
    Color(0xff69d1d5),
    Color(0xffdc57d6),
    Color(0xff4b8eba),
  ];
  List<Alignment> alignmentList = [Alignment.topCenter, Alignment.bottomCenter];
  int index = 0;
  Color bottomColor = Color(0xffecad69);
  Color topColor = Color(0xff975cd0);
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