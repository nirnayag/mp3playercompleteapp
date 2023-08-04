import 'package:flutter/material.dart';
import 'package:mp3player/homescreen/homeview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.black26,
      home: SafeArea(child: homePage())
    );
  }
}


