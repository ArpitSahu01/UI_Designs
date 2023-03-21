import 'package:flutter/material.dart';
import 'package:ui_pracitice/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cloud Storage App',
      home: HomeScreen(),
    );
  }
}
