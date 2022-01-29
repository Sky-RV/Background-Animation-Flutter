import 'package:flutter/material.dart';
import 'package:animation/Snow.dart';

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

          ],
        ),
      ),
    );
  }
}