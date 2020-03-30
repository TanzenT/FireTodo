import 'package:flutter/material.dart';

class ShowNonAlertPage extends StatefulWidget {
  @override
  _ShowNonAlertPageState createState() => _ShowNonAlertPageState();
}

class _ShowNonAlertPageState extends State<ShowNonAlertPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.red[400], Colors.purple[300]])),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Flexible(
                      child: Text('알림 없는 할 일 페이지'),
                    )
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
