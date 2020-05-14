import 'package:flutter/material.dart';
import 'package:tabsnavigation/tabs/home_tab.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TabController = new DefaultTabController(
      length: 4, //número de iconos o tabs de la barra
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("Tabs Navigation"),
          bottom: new TabBar(indicatorColor: Colors.red, tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.home),
              text: "Home",
            ),
            new Tab(
              icon: new Icon(Icons.contacts),
              text: "Register",
            ),
            new Tab(
              icon: new Icon(Icons.place),
              text: "Places",
            ),
            new Tab(
              icon: new Icon(Icons.help),
              text: "Help",
            )
          ]),
        ),
        body: new TabBarView(
          children: <Widget>[
            new HomeTab(),
            new HomeTab(),
            new HomeTab(),
            new HomeTab(),
          ],
        ),
      ),
    );
    return new MaterialApp(
      title: "Tabs Navigation",
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabController,
    );
  }
}
