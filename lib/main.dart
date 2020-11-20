import 'package:flutter/material.dart';
import 'navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Bar Tutorial',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.lightGreen,
        primaryColor: Colors.lightGreen,
        accentColor: Colors.lightGreen,
        canvasColor: const Color(0xFFfafafa),
        primaryIconTheme: IconThemeData(color: Colors.white),
      ),
      home: Navigation(),
    );
  }
}