import 'package:flutter/material.dart';

class MainActivity extends StatefulWidget {
  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('이제 여기에 메인 화면이 들어갈꺼다, 이말이야!'),
    );
  }
}
