import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactLinks extends StatefulWidget {
  ContactLinks({Key key}) : super(key: key);

  final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'arttu.gz94@gmail.com',
      queryParameters: {'subject': 'Portfolio Contact'});
  final double fontSize = 22;

  @override
  _ContactLinksState createState() => _ContactLinksState();
}

class _ContactLinksState extends State<ContactLinks> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 50, bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              child: GestureDetector(
                onTap: () {
                  launch('https://www.instagram.com/goza_mantecosa/');
                },
                child: Text(
                  'Instagram',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                    fontSize: widget.fontSize,
                    color: Colors.red.shade600,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              child: GestureDetector(
                onTap: () {
                  launch('https://github.com/arttu94');
                },
                child: Text(
                  'Github',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                    fontSize: widget.fontSize,
                    color: Colors.red.shade600,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              child: GestureDetector(
                onTap: () {
                  launch('https://www.linkedin.com/in/artuglz/');
                },
                child: Text(
                  'LinkedIn',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                    fontSize: widget.fontSize,
                    color: Colors.red.shade600,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              child: GestureDetector(
                onTap: () {
                  launch(widget.emailLaunchUri.toString());
                },
                child: Text(
                  'Email',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                    fontSize: widget.fontSize,
                    color: Colors.red.shade600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
