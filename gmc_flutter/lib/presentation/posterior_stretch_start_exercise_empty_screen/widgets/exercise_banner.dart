import 'package:flutter/material.dart';
import 'package:gmc_flutter/core/app_export.dart';
/*
This class implements the text banner that appears above the progress indicator
It should have 4 (FOUR) states
1. Begin!
2. Correct exercise**
3. Incorrect Exercise**
4. Finish

We are likely asking this Widget to handle change in state by itself
 */

enum ExerciseStates {
  START,
  CORRECT,
  INCORRECT,
  END
}


class ExerciseStatus extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _BannerState();
}

class _BannerState extends State<ExerciseStatus> {

  ExerciseStates b = ExerciseStates.START;
  void _handleTap(ExerciseStates banner) {
    setState(() {
      this.b = banner;
    });
  }

  String _generateText() {
    String x = "";
    switch(b) {
      case ExerciseStates.START :
        x = "Begin";
        break;
      case ExerciseStates.CORRECT:
        x = "Good job!";
        break;
      case ExerciseStates.INCORRECT:
        x = "Raise your arms higher";
        break;
      case ExerciseStates.END:
        x = "You're done!";
        break;
      default:
        x = "lol why u here";
    }
    return x;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: getPadding(left: 58),
        child: Text(_generateText(),
            overflow:
            TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: CustomTextStyles
                .headlineLargeArimoBlack900));
  }

}