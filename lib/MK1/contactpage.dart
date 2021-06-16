import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'header.dart';

class ContactElement extends StatelessWidget {
  const ContactElement({Key key, this.url, this.content, this.icon})
      : super(key: key);

  final String url;
  final FaIcon icon;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          enableFeedback: url != null ? true : false,
          iconSize: 35,
          onPressed: () {
            if (url != null) {
              launch(url);
            }
          },
          icon: icon,
        ),
        SelectableText(
          content,
          style: TextStyle(
            fontSize: 26.0,
          ),
        ),
      ],
    );
  }
}

class ContactPage extends StatefulWidget {
  ContactPage({Key key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        alignment: Alignment.center,
        width: 1200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Header(
              contactPageRouting: false,
            ),
            Divider(
              color: Color.fromARGB(255, 150, 150, 150),
              height: 80.0,
              indent: 50.0,
              endIndent: 50.0,
              thickness: 1.0,
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(20.0),
                width: 1200,
                height: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ContactElement(
                      icon: FaIcon(FontAwesomeIcons.at),
                      content: 'arttu.gz94@gmail.com',
                    ),
                    ContactElement(
                      icon: FaIcon(FontAwesomeIcons.github),
                      url: 'https://github.com/arttu94/',
                      content: 'github.com/arttu94',
                    ),
                    ContactElement(
                      icon: FaIcon(FontAwesomeIcons.linkedin),
                      url: 'https://www.linkedin.com/in/artuglz/',
                      content: 'linkedin.com/in/artuglz/',
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
