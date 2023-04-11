import 'package:flutter/material.dart';
import 'package:ui_pracitice/screens/home_screen.dart';
import 'package:ui_pracitice/screens/splash_screen.dart';
import 'package:ui_pracitice/screens/storage_detail_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {


   MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cloud Storage App',
      home: Scaffold(
        body: PageView(
          controller: _pageController,
          children: [
            SplashScreen(),
            HomeScreen(),
            StorageDetailScreen(),
          ],
        ),
      ),
    );
  }
}
