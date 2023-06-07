import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.green, //completely useless
          hoverColor: Colors.green[800]),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Welcome Back"), backgroundColor: Colors.green,
        ),
        body: Center(child: Column(children: <Widget>[
            Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.amber,
              border: Border.all(
                width: 8,
                color: Colors.red.shade200
                ),
              borderRadius: BorderRadius.circular(1)
              ),
            ),
            Container(

            )
          ]
        ),
        ),
      ),
    );
  }
}