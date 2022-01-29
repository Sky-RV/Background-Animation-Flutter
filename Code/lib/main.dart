import 'package:flutter/material.dart';
import 'package:animation/Snow.dart';
import 'Chrismas.dart';
import 'Customize.dart';
import 'Dark.dart';
import 'DotLine.dart';
import 'GingleBell.dart';
import 'Light.dart';
import 'Smoke.dart';
import 'animBGFullCode.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Background',
      debugShowCheckedModeBanner: false,
      //theme: ThemeData(colorScheme: ColorScheme.light()),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: Column(
          children: [

            SizedBox(height: 20,),

            ElevatedButton(
              child: Text("Snow Background"),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Snow())
                );
              },
            ),

            SizedBox(height: 20,),

            ElevatedButton(
              child: Text("GingleBell Background"),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GingleBell())
                );
              },
            ),

            SizedBox(height: 20,),

            ElevatedButton(
              child: Text("Chrismas Background"),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Chrismas())
                );
              },
            ),

            SizedBox(height: 20,),

            ElevatedButton(
              child: Text("Customize Background"),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Customize())
                );
              },
            ),

            SizedBox(height: 20,),

            ElevatedButton(
              child: Text("Smoke Background"),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Smoke())
                );
              },
            ),

            SizedBox(height: 20,),

            ElevatedButton(
              child: Text("animBGFullCode Background"),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => animBGFullCode())
                );
              },
            ),

            SizedBox(height: 20,),

            ElevatedButton(
              child: Text("Bubble Background"),
              onPressed: (){
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => Bubblee())
                // );
              },
            ),

            SizedBox(height: 20,),

            ElevatedButton(
              child: Text("Stars Background"),
              onPressed: (){
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => Smoke())
                // );
              },
            ),

            SizedBox(height: 20,),

            ElevatedButton(
              child: Text("Dots and Line Background"),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DotLine())
                );
              },
            ),

            SizedBox(height: 20,),

            ElevatedButton(
              child: Text("Dark Background"),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dark())
                );
              },
            ),

            SizedBox(height: 20,),

            ElevatedButton(
              child: Text("Light Background"),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Light())
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}
