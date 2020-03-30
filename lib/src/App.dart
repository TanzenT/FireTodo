import 'package:firetodo/src/page/AddTodoPage.dart';
import 'package:firetodo/src/page/ShowNonAlertPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'page/ShowAlertPage.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> with SingleTickerProviderStateMixin {
  TabController ctr;

  @override
  void initState() {
    super.initState();
    ctr = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    ctr.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: MediaQuery.of(context).platformBrightness == Brightness.dark
            ? Brightness.dark
            : Brightness.light, // for white status bar text

        // this is for AppBar Title
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(MaterialCommunityIcons.fire,
                color:
                    MediaQuery.of(context).platformBrightness == Brightness.dark
                        ? Colors.white
                        : Colors.black),
            Padding(
              padding: EdgeInsets.only(right: 5),
            ),
            Text(
              'Fire Todo',
              style: TextStyle(
                  color: MediaQuery.of(context).platformBrightness ==
                          Brightness.dark
                      ? Colors.white
                      : Colors.black),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: TabBar(
          indicatorColor: Colors.transparent,
          unselectedLabelColor: Color.fromRGBO(0, 0, 0, 1),
          controller: ctr,
          tabs: <Tab>[
            new Tab(
              icon: new Icon(Icons.add),
            ),
            new Tab(
              icon: new Icon(Icons.timer),
            ),
            new Tab(
              icon: new Icon(Icons.timer_off),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromRGBO(186, 104, 200, 1),
      body: new TabBarView(
        controller: ctr,
        children: <Widget>[
          new AddTodoPage(),
          new ShowAlertPage(),
          new ShowNonAlertPage(),
        ],
      ),
    );
  }
}
