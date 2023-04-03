// ignore_for_file: prefer_const_constructors, camel_case_types
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          centerTitle: true,
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue[800],
        ),
        body: magicBall(),
      ),
    ),
  );
}

class magicBall extends StatefulWidget {
  const magicBall({super.key});

  @override
  State<magicBall> createState() => _magicBallState();
}

class _magicBallState extends State<magicBall> {
  var value = 1;
  void changeFace() {
    setState(() {
      value = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: TextButton(
            onPressed: () {
              changeFace();
            },
            child: Image.asset("images/ball$value.png")),
      ),
    );
  }
}
