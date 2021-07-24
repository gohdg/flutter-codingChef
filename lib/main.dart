import 'package:flutter/material.dart';
import 'package:flutter_app/ScreenA.dart';
import 'package:flutter_app/ScreenB.dart';
import 'package:flutter_app/ScreenC.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => ScreenA(),
        '/b' : (context) => ScreenB(),
        '/c' : (context) => ScreenC()
      },
    );
  }
}
