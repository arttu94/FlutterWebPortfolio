import 'package:flutter/material.dart';

import 'header.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  List<String> toolNames = const [
    'cpp',
    'csharp',
    'unity',
    'unreal',
    'blender',
    'substance',
  ];

  String aboutmeContent = """
Independent game developer currently based in Mérida, Yucatán, México. 

I publish under the name Party Crow (previously Troshky Games), 
I have a keen interest in gameplay programming. I have substancial
experience using Unreal Engine 4 and Unity in both local and 
networked games. 

I strive to make unique and fun experiences as
there's nothing quite as exciting es experiencing a world as you make it.


Outside of game dev I enjoy playing the guitar, listening to music, 
drawing and of course playing games.
""";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          width: 1200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Header(
                aboutPageRouting: false,
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
                  height: 600,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FittedBox(
                        //fit: BoxFit.fitHeight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 600,
                              width: 700,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/me.jpg'),
                                ),
                              ),
                            ),
                            Column(
                              //crossAxisAlignment: CrossAxisAlignment.center,
                              //mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(bottom: 30.0),
                                  child: Text(
                                    'GAME DEVELOPER',
                                    style: TextStyle(
                                      fontSize: 56,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: Text(
                                    aboutmeContent,
                                    style: TextStyle(
                                      fontSize: 32,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          for (var item in toolNames)
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                  fit: BoxFit.scaleDown,
                                  image: AssetImage('assets/images/$item.png'),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
