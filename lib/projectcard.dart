import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatefulWidget {
  final String projectName;
  final String imageName;
  final String urlString;

  ProjectCard({Key key, this.projectName, this.imageName, this.urlString})
      : super(key: key);

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool showProjectName = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() => showProjectName = true);
      },
      onExit: (event) {
        setState(() => showProjectName = false);
      },
      child: Container(
        child: Stack(
          children: [
            Container(
              //color: Colors.grey,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(widget.imageName),
                ),
              ),
            ),
            if (showProjectName)
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 3,
                  sigmaY: 3,
                ),
                //child: Expanded(
                child: GestureDetector(
                  onTap: () {
                    if (widget.urlString != null) launch(widget.urlString);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.black38,
                    child: Center(
                      child: Text(
                        widget.projectName,
                        style: TextStyle(
                          fontSize: 42.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w200,
                          color: Color.fromARGB(255, 200, 200, 200),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
