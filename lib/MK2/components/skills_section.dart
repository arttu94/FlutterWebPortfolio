import 'package:arturo_portfolio/MK2/components/section.dart';
import 'package:flutter/material.dart';

class SkillsSection extends StatefulWidget {
  SkillsSection({Key key}) : super(key: key);

  @override
  _SkillsSectionState createState() => _SkillsSectionState();
}

class _SkillsSectionState extends State<SkillsSection> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool slimFit = screenWidth <= 600;
    return Section(
      padding: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
      sectionName: 'SKILLS',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Padding(
              padding: EdgeInsets.only(right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(
                    'LANGUAGES',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                        fontSize: slimFit ? 16 : 18,
                        color: Colors.grey.shade700),
                  ),
                  SelectableText(
                    "C++\nC#\nDart\n",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.normal,
                      fontSize: slimFit ? 14 : 16,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ],
              ),
            ),
          ),
          //Spacer(),
          Flexible(
            child: Padding(
              padding: EdgeInsets.only(right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(
                    'ENGINES/FRAMEWORKS',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                        fontSize: slimFit ? 16 : 18,
                        color: Colors.grey.shade700),
                  ),
                  SelectableText(
                    "Unreal Engine 4\nUnity\nSDL2\nFlutter\n",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.normal,
                      fontSize: slimFit ? 14 : 16,
                      color: Colors.grey.shade800,
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
