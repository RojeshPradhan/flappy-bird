import 'dart:async';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double birdY = 0;

  void jump() {
    Timer.periodic(Duration(milliseconds: 50), (timer) {
      setState(() {
        birdY -= 0.05;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: jump,
        child: Scaffold(
          body: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.blue,
                  child: Center(
                    child: Stack(
                      children: [
                        Container(
                          alignment: Alignment(0, birdY),
                          width: 50,
                          height: 50,
                          color: Colors.yellow,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.brown,
                ),
              ),
            ],
          ),
        ));
  }
}
