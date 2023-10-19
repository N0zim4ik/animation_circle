import 'dart:math';

import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  const MyPainter({
    this.width = 3,
  });

  final double width;

  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;
    final h = size.height;

    final halfW = width / 2;

    final paintRed = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.butt
      ..strokeWidth = 20;

    final paintYellow = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.butt
      ..strokeWidth = 20;

    final paintGreen = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.butt
      ..strokeWidth = 20;

    final paintBlue = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.butt
      ..strokeWidth = 20;

    canvas.drawArc(
      Rect.fromPoints(
        Offset(0 + halfW, 0 + halfW),
        Offset(w - halfW, h - halfW),
      ),
      11.7,
      -2,
      false,
      paintRed,
    );

    canvas.drawArc(
      Rect.fromPoints(
        Offset(0 + halfW, 0 + halfW),
        Offset(w - halfW, h - halfW),
      ),
      4,
      -1.5,
      false,
      paintYellow,
    );

    canvas.drawArc(
      Rect.fromPoints(
        Offset(0 + halfW, 0 + halfW),
        Offset(w - halfW, h - halfW),
      ),
      6.5,
      2,
      false,
      paintBlue,
    );
    canvas.drawArc(
      Rect.fromPoints(
        Offset(0 + halfW, 0 + halfW),
        Offset(w - halfW, h - halfW),
      ),
      20,      2,
      false,
      paintGreen,
    );

    canvas.drawLine(
      Offset(30, 35),
      Offset(77, 35),
      paintBlue,
    );
  }

  @override
  bool shouldRepaint(MyPainter oldDelegate) => false;
}
