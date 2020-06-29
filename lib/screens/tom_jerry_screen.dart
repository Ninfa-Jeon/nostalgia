import 'package:flutter/material.dart';
import 'package:nostalgia/constants.dart';
import 'package:nostalgia/components/music_button.dart';

class TomJerryScreen extends StatelessWidget {
  static const String id = 'tom_jerry_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink,
        title: Text('Try clicking around'),
      ),
      body: Container(
        decoration: kDecoration().copyWith(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/tomjerry.jpg'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                musicButton(
                  audioName: "assets/audios/tom_and_jerry_theme.mp3",
                  colour: Colors.transparent,
                  elevate: 0.0,
                ),
                musicButton(
                  audioName: "assets/audios/jerrys-theme.mp3",
                  colour: Colors.transparent,
                  elevate: 0.0,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                musicButton(
                  audioName: "assets/audios/figaro.mp3",
                  colour: Colors.transparent,
                  elevate: 0.0,
                ),
                musicButton(
                  audioName: "assets/audios/uncle.mp3",
                  colour: Colors.transparent,
                  elevate: 0.0,
                ),
              ],
            ),
            musicButton(
              audioName: "assets/audios/tom_scream.mp3",
              colour: Colors.transparent,
              elevate: 0.0,
            ),
          ],
        ),
      ),
    );
  }
}
