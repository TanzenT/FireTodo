import 'package:firetodo/src/activity/MainActivity.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Material thingy
    return Scaffold(
      appBar: AppBar(
        // this is for AppBar Title
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Icon(Icons.extension), Text('Fire Todo')],
        ),
      ),
      body: MainActivity(),
    );
  }
}
