import 'package:flutter/material.dart';
import 'package:speech_balloon/speech_balloon.dart';

class ExerciseActivity extends StatelessWidget {
  const ExerciseActivity({
    super.key,
    required this.day,
    required this.exercise,
    required this.tileColor
  });

  final String day, exercise;
  final Color tileColor;


  @override
  Widget build(BuildContext context) {
    return Card(
      color: tileColor,
      elevation: 4,
        child: ExpansionTile(
          iconColor: Colors.white,
          collapsedIconColor: Colors.white,
          title: Text("$day | $exercise ",
              style: const TextStyle(fontSize: 25, color: Colors.white) ),
          backgroundColor: tileColor,
          childrenPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          children: [
            Text(exercise),
            Row(children: [
              ElevatedButton(
                onPressed: () {
                  Navigator();
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  backgroundColor: Colors.green,
                  shape: CircleBorder()
                ),
                child: Text("Start", style: TextStyle(fontSize: 20),)),
              SizedBox(width: 25),
              DisplayImage()],),
          ],
            )
          ,
        );
  }

}

class DisplayImage extends StatefulWidget {
  const DisplayImage({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DisplayImage();
  }

}

class _DisplayImage extends State<DisplayImage> {
  final show_picture = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Visibility(child: SpeechBalloon(
      borderColor: Colors.green,
      color: Colors.green,
      nipLocation: NipLocation.left,
      nipHeight: 50,
      height: 220,
      width: 175,
      child: Container(
        height: 220,
        width: 175,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border.all(width: 5, color: Colors.green),
          borderRadius: BorderRadius.circular(3),
          image: const DecorationImage(image: AssetImage('assets/Stretch.jpeg'), fit: BoxFit.fill)
        ),
      )),
      visible: show_picture
    );
  }

}