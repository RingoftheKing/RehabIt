import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.home, size: 26)),
          IconButton(onPressed: () {}, icon: Icon(Icons.speaker_notes, size: 25)),
          IconButton(onPressed: () {}, icon: Icon(Icons.list_alt, size: 25)),
          IconButton(onPressed: () {}, icon: Icon(Icons.manage_accounts, size: 25))
        ],)
    );
  }

}