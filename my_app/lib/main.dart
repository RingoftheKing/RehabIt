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
            Expanded(
              flex: 5,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    // color: Colors.amber,
                    border: Border.all(width: 8, color: Colors.red.shade200),
                    borderRadius: BorderRadius.circular(1),
                    image: DecorationImage(
                      image: AssetImage('assets/Branching.jpeg'),
                      fit: BoxFit.cover
                    )
                  ),
                )
            ),
          Expanded(
            flex: 1,
            child: SizedBox.expand(child: Center(child: Text("Cute?")))
          ),
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(1),
              child:
              Column(children: <Widget>[
                Expanded(
                  flex: 10,
                  child: Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      // color: Colors.purple,
                      border: Border.all(width: 4, color: Colors.brown.shade500),
                      borderRadius: BorderRadius.circular(2),
                      image: const DecorationImage(
                        image: AssetImage('assets/Axolotl.jpg'),
                        fit: BoxFit.cover
                      )
                    ),
                  )
                ),
                Expanded(
                  flex: 1,
                  child: const SizedBox.expand()
                ),
                Expanded(
                  flex: 4,
                  child: Row(children: <Widget>[
                    TextButton(onPressed: () {}, child: const Text("Yes")),
                    const SizedBox(width:210),
                    TextButton(onPressed: () {}, child: const Text("No"))
                ])
            )
              ])
            )
          )
          ]
        ),
        ),
      ),
    );
  }
}