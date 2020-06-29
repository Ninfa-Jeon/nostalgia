import 'package:flutter/material.dart';
import 'package:nostalgia/screens/guess_sounds.dart';

class AlertBox extends StatelessWidget {
  static const String id = 'alert_box';
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.pink,
      title: Center(
        child: Text('Game  of  Luck'),
      ),
      content: Text(
        'There are five sounds hidden in this minefield. \nNothing happens if you stumble upon four of them, but if you happen to click the fifth one, it will be Game Over.\nCan you find them all successfully?',
        textAlign: TextAlign.center,
      ),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Pacifico',
      ),
      contentTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
      actionsPadding: EdgeInsets.only(right: 90.0),
      actions: [
        MaterialButton(
          elevation: 20.0,
          color: Colors.white,
          child: Text(
            'Let\'s Play',
            style: TextStyle(color: Colors.pink),
          ),
          onPressed: () {
            Navigator.popAndPushNamed(context, GuessSound.id);
          },
        ),
      ],
    );
  }
}
