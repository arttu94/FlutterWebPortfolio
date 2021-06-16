import 'package:flutter/material.dart';
import '../main.dart';

class Header extends StatelessWidget {
  const Header(
      {Key key,
      this.aboutPageRouting = true,
      this.contactPageRouting = true,
      this.portfolioPageRouting = true})
      : super(key: key);

  final bool portfolioPageRouting;
  final bool aboutPageRouting;
  final bool contactPageRouting;

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
                  margin: EdgeInsets.only(left: 40, right: 40),
                  child: GestureDetector(
                    onTap: () {
                      if (portfolioPageRouting) {
                        navKey.currentState.pushNamed('/portfolio');
                      }
                      //Navigator.pushNamed(context, '/portfolio');
                    },
                    child: Text(
                      "PORTFOLIO",
                      style: TextStyle(
                        color: portfolioPageRouting
                            ? Color.fromARGB(255, 50, 50, 50)
                            : Color.fromARGB(255, 150, 150, 150),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 40, right: 40),
                  child: GestureDetector(
                    onTap: () {
                      if (aboutPageRouting) {
                        navKey.currentState.pushNamed('/about');
                      }
                      //Navigator.pushNamed(context, '/about');
                    },
                    child: Text(
                      "ABOUT",
                      style: TextStyle(
                        color: aboutPageRouting
                            ? Color.fromARGB(255, 50, 50, 50)
                            : Color.fromARGB(255, 150, 150, 150),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 40, right: 40),
                  child: GestureDetector(
                    onTap: () {
                      if (contactPageRouting) {
                        navKey.currentState.pushNamed('/contact');
                      }
                      //Navigator.pushNamed(context, '/about');
                    },
                    child: Text(
                      "CONTACT",
                      style: TextStyle(
                        color: contactPageRouting
                            ? Color.fromARGB(255, 50, 50, 50)
                            : Color.fromARGB(255, 150, 150, 150),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
