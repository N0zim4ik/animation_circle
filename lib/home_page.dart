import 'package:flutter/material.dart';

import 'my_painter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox.square(
          dimension: 70,
          child: Stack(
            children: [
              CustomPaint(
                painter: MyPainter(
                ),

                size: Size.infinite,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
