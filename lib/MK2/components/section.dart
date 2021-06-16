import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Section extends StatefulWidget {
  Section(
      {Key key,
      this.child,
      this.sectionName = 'SECTION',
      this.padding = const EdgeInsets.all(0)})
      : super(key: key);

  final String sectionName;
  final EdgeInsets padding;
  final Widget child;

  @override
  _SectionState createState() => _SectionState();
}

class _SectionState extends State<Section> {
  @override
  Widget build(BuildContext context) {
    bool slimFit = MediaQuery.of(context).size.width <= 600;
    return Padding(
      padding: widget.padding,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (slimFit)
              Padding(
                padding: EdgeInsets.only(bottom: 10, left: 10),
                child: Container(
                  width: 200,
                  child: SelectableText(
                    widget.sectionName,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.red.shade600,
                    ),
                  ),
                ),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (!slimFit)
                  Container(
                    width: MediaQuery.of(context).size.width > 800 ? 200 : 100,
                    child: SelectableText(
                      widget.sectionName,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.red.shade600,
                      ),
                    ),
                  ),
                Container(
                  width: 10,
                ),
                if (widget.child != null)
                  Flexible(
                    child: widget.child,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
