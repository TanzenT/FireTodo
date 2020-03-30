import 'package:flutter/material.dart';

class ShowAlertPage extends StatefulWidget {
  @override
  _ShowAlertPageState createState() => _ShowAlertPageState();
}

class _ShowAlertPageState extends State<ShowAlertPage> {
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
                      child: Text('알림 있는 할 일 페이지'),
                    )
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
