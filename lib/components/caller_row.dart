import 'package:flutter/material.dart';
import 'music_button.dart';

class CallerRow extends StatelessWidget {
  const CallerRow({Key key, @required this.rownums}) : super(key: key);

  final List<String> rownums;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        musicButton(num: rownums[0], audioName: "assets/audios/barbie.mp3"),
        musicButton(num: rownums[1], audioName: "assets/audios/barbie.mp3"),
        musicButton(num: rownums[2], audioName: "assets/audios/barbie.mp3"),
      ],
    );
  }
}
