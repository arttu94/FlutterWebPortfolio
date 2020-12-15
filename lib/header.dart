import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 40.0, bottom: 20.0),
              child: Text(
                "ARTURO GONZALEZ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 42,
                ),
              ),
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  child: Text("PORTFOLIO"),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  child: Text("ABOUT"),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  child: Text("CONTACT"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
