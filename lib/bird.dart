import 'package:flutter/material.dart';

class MyBird extends StatelessWidget {
  final birdY;

  MyBird({required this.birdY});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment(0, birdY),
        height: 50,
        width: 50,
        child: Image.asset('lib/images/bird.png'));
  }
}
