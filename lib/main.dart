import 'package:firetodo/src/App.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Set main color to Red for Lightmode
        primaryColor: Colors.red[400],
        primarySwatch: Colors.red,
        primaryTextTheme: Typography(platform: TargetPlatform.iOS).white,
        textTheme: Typography(platform: TargetPlatform.iOS).white,
        primaryIconTheme: IconThemeData(color: Colors.white),
      ),

      // set main color to Red for Darkmode
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: Colors.red[400],
      ),
      home: App(),
    );
  }
}
