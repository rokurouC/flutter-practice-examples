import 'package:flutter/material.dart';
import 'package:loading/loading.dart';
import 'package:loading/indicator/ball_pulse_indicator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TestFutureBuild(),
    );
  }
}

class TestFutureBuild extends StatefulWidget {
  @override
  _TestFutureBuildState createState() => _TestFutureBuildState();
}

class _TestFutureBuildState extends State<TestFutureBuild> {
  @override
  Widget build(BuildContext context) {
    Future<String> testFuture = Future.delayed(Duration(seconds: 3), () {
      return 'It will be cold next week.';
    });
    return Container(
      color: Colors.white,
      child: FutureBuilder(
      future: testFuture,
      builder: (context, snapshot) {
        return Center(
          child: snapshot.hasData ?
            Text(
                snapshot.data,
                style: TextStyle(
                    color: Colors.blue.shade400,
                    fontSize: 25,
                    decoration: TextDecoration.none
                ),
            ) :
            Loading(indicator: BallPulseIndicator(), size: 100.0,color: Colors.blue.shade400),
        );
      },
    ),
    );
  }
}

