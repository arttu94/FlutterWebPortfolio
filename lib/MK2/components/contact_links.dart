import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactLinks extends StatefulWidget {
  ContactLinks({Key key}) : super(key: key);

  final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'arttu.gz94@gmail.com',
      queryParameters: {'subject': 'Hello!'});

  @override
  _ContactLinksState createState() => _ContactLinksState();
}

class _ContactLinksState extends State<ContactLinks> {
  @override
  Widget build(BuildContext context) {
    double iconSize = MediaQuery.of(context).size.width <= 600 ? 30 : 36;
    return Padding(
      padding: EdgeInsets.only(top: 35, bottom: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: IconButton(
                iconSize: iconSize,
                icon: FaIcon(FontAwesomeIcons.instagram),
                onPressed: () {
                  launch('https://www.instagram.com/goza_mantecosa/');
                },
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: IconButton(
                iconSize: iconSize,
                icon: FaIcon(FontAwesomeIcons.github),
                onPressed: () {
                  launch('https://github.com/arttu94');
                },
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: IconButton(
                iconSize: iconSize,
                icon: FaIcon(FontAwesomeIcons.linkedin),
                onPressed: () {
                  launch('https://www.linkedin.com/in/artuglz/');
                },
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: IconButton(
                iconSize: iconSize,
                icon: FaIcon(FontAwesomeIcons.at),
                onPressed: () {
                  launch(widget.emailLaunchUri.toString());
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
