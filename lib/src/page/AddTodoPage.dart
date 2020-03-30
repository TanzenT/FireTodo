import 'package:flutter/material.dart';

class AddTodoPage extends StatefulWidget {
  @override
  _AddTodoPageState createState() => _AddTodoPageState();
}

class _AddTodoPageState extends State<AddTodoPage> {
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
                child: Column(
                  children: <Widget>[
                    Container(
                      child: TextField(
                        autofocus: false,
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            // width: 0.0 produces a thin "hairline" border
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                width: 0.0),
                          ),
                          border: const OutlineInputBorder(),
                          labelStyle: new TextStyle(color: Colors.white),
                          labelText: '할 일 입력',
                          fillColor: Color.fromRGBO(255, 255, 255, 1),
                          focusColor: Color.fromRGBO(255, 255, 255, 1),
                          hoverColor: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
