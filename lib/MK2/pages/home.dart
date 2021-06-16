import 'package:arturo_portfolio/MK2/components/animated_background.dart';
import 'package:arturo_portfolio/MK2/components/contact_links.dart';
import 'package:arturo_portfolio/MK2/components/id_banner.dart';
import 'package:arturo_portfolio/MK2/components/project_section.dart';
import 'package:arturo_portfolio/MK2/components/skills_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Material(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          AnimatedBackground(),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: screenWidth > 1000 ? screenWidth * .1 : 0.5),
              width: screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IDBanner(),
                  SkillsSection(),
                  ProjectSection(),
                  ContactLinks(),
                  Center(
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage('assets/images/crow.gif'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
