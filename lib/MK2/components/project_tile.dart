import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectTile extends StatefulWidget {
  ProjectTile(
      {Key key,
      this.projectTitle = 'title',
      this.imageName,
      this.urlString,
      this.linkIconName,
      this.projectDetails = 'details'})
      : super(key: key);

  final String projectDetails;
  final String projectTitle;
  final String imageName;
  final String linkIconName;
  final String urlString;

  @override
  _ProjectTileState createState() => _ProjectTileState();
}

class _ProjectTileState extends State<ProjectTile> {
  bool mouseHovering = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            flex: MediaQuery.of(context).size.width > 800 ? 4 : 3,
            child: MouseRegion(
              onHover: (event) {
                setState(() => mouseHovering = true);
              },
              onExit: (event) {
                setState(() => mouseHovering = false);
              },
              child: Container(
                child: Stack(
                  children: [
                    Container(
                      //width: 600,
                      height: 350,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(widget.imageName),
                        ),
                      ),
                    ),
                    if (mouseHovering)
                      ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 3,
                            sigmaY: 3,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              if (widget.urlString != null)
                                launch(widget.urlString);
                            },
                            child: Container(
                              //width: 600,
                              height: 350,
                              alignment: Alignment.center,
                              color: Colors.black38,
                              child: Center(
                                child: widget.linkIconName == null
                                    ? Text(
                                        widget.projectTitle,
                                        style: TextStyle(
                                          fontSize: 36.0,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w200,
                                          color: Color.fromARGB(
                                              255, 200, 200, 200),
                                        ),
                                      )
                                    : Container(
                                        width: 130,
                                        height: 130,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image:
                                                AssetImage(widget.linkIconName),
                                          ),
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
          ),
          Container(
            width: 20,
          ),
          Flexible(
            flex: screenWidth <= 600 ? 2 : 1,
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
