import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class CustomCard extends StatefulWidget {
  CustomCard({this.onpress, this.backWidget});

  final Function onpress;
  final Widget backWidget;

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  Function function;
  bool isFront = true;

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      direction: FlipDirection.HORIZONTAL, // default
      onFlip: () {
        setState(() {
          isFront = !isFront;
          isFront ? () {} : widget.onpress();
        });
      },
      front: Card(
        margin: EdgeInsets.all(20.0),
        color: Color(0xFFF975B1),
        shadowColor: Color(0xFF5F00F9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 20.0,
        child: Center(
          child: Icon(
            Icons.help,
            size: 50.0,
          ),
        ),
      ),
      back: Card(
        margin: EdgeInsets.all(20.0),
        color: Color(0xFFF975B1),
        shadowColor: Color(0xFF5F00F9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 20.0,
        child: Container(
          alignment: Alignment.center,
          child: widget.backWidget,
        ),
      ),
    );
  }
}
