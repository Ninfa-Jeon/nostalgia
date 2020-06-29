import 'package:flutter/material.dart';
import 'package:nostalgia/constants.dart';
import 'package:nostalgia/screens/alert_box.dart';
import 'package:nostalgia/screens/tom_jerry_screen.dart';
import '../components/custom_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'barbie_screen.dart';

class PickScreen extends StatelessWidget {
  static const String id = 'pick_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF8425E7),
        title: Text('Pick or Swipe'),
      ),
      body: Container(
        decoration: kDecoration(),
        child: CarouselSlider(
          options: CarouselOptions(
            height: 800,
            aspectRatio: 16 / 9,
            viewportFraction: 0.9,
            initialPage: 0,
            enableInfiniteScroll: false,
            reverse: false,
            autoPlay: false,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
          items: [
            CustomCard(
              onpress: () async {
                await new Future.delayed(const Duration(seconds: 1));
                Navigator.pushNamed(context, BarbieScreen.id);
              },
              backWidget: Center(
                child: Image.asset(
                  'assets/images/barbielogo.png',
                ),
              ),
            ),
            CustomCard(
              onpress: () async {
                await new Future.delayed(const Duration(seconds: 1));
                Navigator.pushNamed(context, TomJerryScreen.id);
              },
              backWidget: Center(
                child: Image.asset(
                  'assets/images/tomjerrylogo.png',
                ),
              ),
            ),
            CustomCard(
              onpress: () async {
                await new Future.delayed(const Duration(seconds: 1));
                Navigator.pushNamed(context, AlertBox.id);
              },
              backWidget: Center(
                child: Image.asset(
                  'assets/images/minesweeper.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
