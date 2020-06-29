import 'package:flutter/material.dart';
import 'pick_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(
                0.3, 0.0), // 10% of the width, so there are ten blinds.
            colors: [
              const Color(0xFF5F00F9),
              const Color(0xFFFC4EFD)
            ], // whitish to gray
            tileMode: TileMode.repeated, // repeats the gradient over the canvas
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Nostalgia',
              style: TextStyle(
                color: Colors.white,
                fontSize: 55.0,
                fontFamily: "Pacifico",
              ),
            ),
            SizedBox(
              height: 10.0,
              width: double.infinity,
            ),
            MaterialButton(
              elevation: 10.0,
              child: Text('Begin!'),
              color: Color(0xFFF488B9),
              disabledColor: Color(0xFFF488B9),
              textColor: Colors.white,
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  PickScreen.id,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
