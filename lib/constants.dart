import 'package:flutter/material.dart';

BoxDecoration kDecoration() {
  return BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment(0.3, 0.0), // 10% of the width, so there are ten blinds.
      colors: [
        const Color(0xFF5F00F9),
        const Color(0xFFFAA1FD),
        const Color(0xFFFC4EFD)
      ], // whitish to gray
      tileMode: TileMode.mirror,
    ),
  );
}
