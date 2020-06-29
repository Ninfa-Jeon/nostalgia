import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

Widget musicButton({
  String num: '',
  @required String audioName,
  Color colour: Colors.white,
  double elevate: 10.0,
  Function pressed,
}) {
  final assetsAudioPlayer = AssetsAudioPlayer();
  void pressedNow() {
    assetsAudioPlayer.open(
      Audio(audioName),
    );
  }

  return MaterialButton(
    elevation: elevate,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    color: colour,
    child: Text(
      num,
      style: TextStyle(
        color: Colors.pink,
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
      ),
    ),
    onPressed: pressed != null
        ? () {
            pressed();
            pressedNow();
          }
        : pressedNow,
  );
}
