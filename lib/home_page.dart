import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<double> aligments = [for(double i = -1.0; i <= 1.0; i+= 0.1)i,];
  // bool a = afalse;
  double a = 0;
  double b = 0;


  double x = 0;
  double y = 0;
  double randomGenerator() {
    aligments.shuffle();
    return aligments[0];
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1)).whenComplete(() {
      x = randomGenerator();
      y = randomGenerator();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedAlign(
            alignment: Alignment(x, y),
            duration: const Duration(seconds: 5),
            onEnd: () {
              x = randomGenerator();
              y = randomGenerator();
              setState(() {

              });
            },
            child: GestureDetector(
              onTapDown: (details) {
                a = details.globalPosition.dx > 0 ? details.globalPosition.dx : 1;
                b = details.globalPosition.dy > 0 ? details.globalPosition.dy : 1;

                setState(() {

                });
              },
              onTapUp :  (details) {
                a = details.globalPosition.dx > 0 ? details.globalPosition.dx : 1;
                b = details.globalPosition.dy > 0 ? details.globalPosition.dy : 1;
                setState(() {

                });
              },
              onPanUpdate: (details) {
                 a = details.globalPosition.dx > 0 ? details.globalPosition.dx : 1;
                 b = details.globalPosition.dy > 0 ? details.globalPosition.dy : 1;
                 setState(() {

                 });
                print(details.localPosition);
                // print(details.globalPosition);
                // print(details.delta);
              },
              child: SizedBox(
                width: 40,
                height: 40,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          20,
                        ),
                      )),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: a, vertical: b),
            child: Icon(
              Icons.touch_app_rounded,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
