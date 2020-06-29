import 'package:flutter/material.dart';
import 'package:nostalgia/constants.dart';
import '../components/caller_row.dart';

class BarbieScreen extends StatelessWidget {
  static const String id = 'barbie_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink,
        title: Text('Voila!'),
      ),
      body: Container(
        height: 800.0,
        decoration: kDecoration().copyWith(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/barbie pic.jpg'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CallerRow(
              rownums: ['1', '2', '3'],
            ),
            CallerRow(
              rownums: ['4', '5', '6'],
            ),
            CallerRow(
              rownums: ['7', '8', '9'],
            ),
            CallerRow(
              rownums: ['*', '0', '#'],
            ),
          ],
        ),
      ),
    );
  }
}
