import 'package:flutter/material.dart';

class IDBanner extends StatefulWidget {
  IDBanner({
    Key key,
  }) : super(key: key);

  @override
  _IDBannerState createState() => _IDBannerState();
}

class _IDBannerState extends State<IDBanner> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: 0, top: 80),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Container(
              width: screenWidth > 800 ? 200 : 100,
              height: screenWidth > 800 ? 150 : 90,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage('assets/images/icon-AG.png'),
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectableText(
                "Arturo González",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 40,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),
              ),
              SelectableText(
                "Game Developer",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 24,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                ),
              ),
              SelectableText(
                "Party Crow\nMéxico",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 22,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
