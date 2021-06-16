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
            //if (showProjectName)
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

/*
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectTile extends StatefulWidget {
  ProjectTile(
      {Key key,
      this.projectTitle = 'title',
      this.imageName,
      this.urlString,
      this.projectDetails = 'details'})
      : super(key: key);

  final String projectDetails;
  final String projectTitle;
  final String imageName;
  final String urlString;

  @override
  _ProjectTileState createState() => _ProjectTileState();
}

class _ProjectTileState extends State<ProjectTile> {
  bool mouseHovering;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          //Flexible(
          //  flex: 4,
          // child: Container(
          //   height: 350,
          //   width: 600,
          //child:
          MouseRegion(
            onHover: (event) => mouseHovering = true,
            onExit: (event) => mouseHovering = false,
            child: ClipRect(
              child: Stack(
                children: [
                  Container(
                    height: 350,
                    width: 600,
                    //color: Colors.grey,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(widget.imageName),
                      ),
                    ),
                  ),
                  if (mouseHovering != null && mouseHovering)
                    Center(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 3,
                          sigmaY: 3,
                        ),
                        //child: Expanded(
                        child: GestureDetector(
                          onTap: () {
                            if (widget.urlString != null)
                              launch(widget.urlString);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            //color: Colors.black38,
                            child: Center(
                              child: Text(
                                'LINK',
                                style: TextStyle(
                                  fontSize: 36.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w200,
                                  color: Color.fromARGB(255, 200, 200, 200),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          //),
          //),
          Container(
            width: 20,
          ),
          Flexible(
            //width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  widget.projectTitle,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.grey.shade700,
                  ),
                ),
                SelectableText(
                  widget.projectDetails,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: Colors.grey.shade800,
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
*/
