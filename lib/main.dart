import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/pick_screen.dart';
import 'screens/barbie_screen.dart';
import 'screens/tom_jerry_screen.dart';
import 'screens/guess_sounds.dart';
import 'screens/alert_box.dart';

void main() {
  runApp(Nostalgia());
}

class Nostalgia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        PickScreen.id: (context) => PickScreen(),
        BarbieScreen.id: (context) => BarbieScreen(),
        TomJerryScreen.id: (context) => TomJerryScreen(),
        GuessSound.id: (context) => GuessSound(),
        AlertBox.id: (context) => AlertBox(),
      },
    );
  }
}
