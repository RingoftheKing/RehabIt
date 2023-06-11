import 'package:flutter/material.dart';
import 'package:my_app/CustomBottomNavBar.dart';
import 'package:my_app/Today.dart';

void main() {
  runApp(const my_app());
}


class my_app extends StatelessWidget {
  const my_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.grey),
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text("Welcome Jonathan!", style: TextStyle(color: Colors.white, fontSize: 30)),
              //SizedBox(width: 25),
              IconButton(onPressed: () {}, icon: const Icon(Icons.account_circle_rounded, size: 50))
            ],
          ),
          toolbarHeight: 100,
        ),
        body: ListView(children: const [
          ExerciseActivity(day: 'Today', exercise: 'Shoulder Stretch', tileColor: Colors.green,),
          ExerciseActivity(day: 'Tomorrow', exercise: 'Conditioning 1', tileColor: Colors.orange,)]),
        bottomNavigationBar: const NavBar(),
      ),
    );
  }
}