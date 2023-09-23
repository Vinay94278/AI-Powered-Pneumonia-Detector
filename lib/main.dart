import 'package:flutter/material.dart';
// import 'MyHomePage.dart';
import 'intro_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pneumonia Detector',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: IntroSliderPage(),
    );
  }
}
