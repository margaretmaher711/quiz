//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quizperfecto/quizmodel.dart';
import 'package:quizperfecto/quizview.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: Text('aaaaaaaaaa')), body: Home()),
    );
  }
}
