import 'package:ArturoPortfolio/header.dart';
import 'package:ArturoPortfolio/projectgrid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 1200,
            child: Column(
              children: [
                Header(),
                Divider(
                  color: Color.fromARGB(255, 30, 30, 30),
                  height: 80.0,
                  indent: 50.0,
                  endIndent: 50.0,
                  thickness: 2.0,
                ),
                ProjectGridView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
