import 'package:firetodo/src/App.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of Fire Todo.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Set main color to Red for Lightmode
        primarySwatch: Colors.red,
      ),
      // set main color to Red for Darkmode
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: Colors.red,
      ),
      home: App(),
    );
  }
}
