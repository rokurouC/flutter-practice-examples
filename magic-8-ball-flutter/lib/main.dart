import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue.shade900,
          ),
          body: Magic8Page(),
        ),
      ),
    );

class Magic8Page extends StatefulWidget {
  @override
  _Magic8PageState createState() => _Magic8PageState();
}

class _Magic8PageState extends State<Magic8Page> {
  int ballIndex = Random().nextInt(5) + 1;

  void shuffleBallIndex() {
    setState(() {
      ballIndex = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          onPressed: shuffleBallIndex,
          child: Image.asset('images/ball$ballIndex.png'),
        ),
      ),
    );
  }
}
