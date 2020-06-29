import 'package:flutter/material.dart';
import 'package:nostalgia/constants.dart';
import 'package:nostalgia/components/music_button.dart';
import 'package:nostalgia/screens/alert_box.dart';

class GuessSound extends StatefulWidget {
  static const String id = 'guess_sounds';

  @override
  _GuessSoundState createState() => _GuessSoundState();
}

class _GuessSoundState extends State<GuessSound> {
  String bgimg = 'assets/images/Minesweeper_XP.png';
  bool ignore = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Remember these sounds?'),
            Flexible(
              child: IconButton(
                padding: EdgeInsets.only(left: 20.0),
                icon: Icon(Icons.help_outline),
                onPressed: () {
                  Navigator.popAndPushNamed(context, AlertBox.id);
                },
              ),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: kDecoration().copyWith(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(bgimg),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              top: 10.0, bottom: 45.0, left: 30.0, right: 30.0),
          child: IgnorePointer(
            ignoring: ignore,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 190.0,
                ),
                Row(
                  children: [
                    musicButton(
                      audioName: "assets/audios/nokia.mp3",
                      colour: Colors.transparent,
                      elevate: 0.0,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                  child: musicButton(
                    audioName: "assets/audios/smb_gameover.wav",
                    colour: Colors.transparent,
                    elevate: 0.0,
                    pressed: () {
                      setState(() {
                        bgimg = 'assets/images/minesweeper_gameover.jpg';
                        ignore = true;
                      });
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    musicButton(
                      audioName: "assets/audios/looneytunes.mp3",
                      colour: Colors.transparent,
                      elevate: 0.0,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    musicButton(
                      audioName: "assets/audios/mario.mp3",
                      colour: Colors.transparent,
                      elevate: 0.0,
                    ),
                  ],
                ),
                Row(
                  children: [
                    musicButton(
                      audioName: "assets/audios/crazyfrog.mp3",
                      colour: Colors.transparent,
                      elevate: 0.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
