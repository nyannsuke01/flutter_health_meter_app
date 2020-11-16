import 'package:flutter/material.dart';
import 'dart:math';
import 'package:charts_flutter/flutter.dart' as charts;

import 'home.dart';

void main() {
  runApp(new GalleryApp());
}

class GalleryApp extends StatefulWidget {
  GalleryApp({Key key}) : super(key: key);

  @override
  GalleryAppState createState() => new GalleryAppState();

}

/// The main gallery app state.
///
/// Controls performance overlay, and instantiates a [Home] widget.
class GalleryAppState extends State<GalleryApp> {
  // Initialize app settings from the default configuration.

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
          primarySwatch: Colors.pink,
          primaryColor: const Color(0xFFe91e63),
          accentColor: const Color(0xFFe91e63),
          canvasColor: const Color(0xFFfafafa),
        ),
        home: new Home());

  }
}