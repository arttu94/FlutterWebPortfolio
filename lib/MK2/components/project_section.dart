import 'package:arturo_portfolio/MK2/components/project_tile.dart';
import 'package:arturo_portfolio/MK2/components/section.dart';
import 'package:flutter/material.dart';

class ProjectSection extends StatefulWidget {
  ProjectSection({Key key}) : super(key: key);

  @override
  _ProjectSectionState createState() => _ProjectSectionState();
}

class _ProjectSectionState extends State<ProjectSection> {
  @override
  Widget build(BuildContext context) {
    return Section(
      padding: EdgeInsets.only(right: 20, left: 20),
      sectionName: 'FEATURED PROJECTS',
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProjectTile(
            projectTitle: 'DIMENSIO',
            projectDetails:
                "Self published puzzle game based on my thesis project, using an interactive shadow-projection system allows to combine 2d and 3d gameplay mechanics creating a new and challenging experience.",
            imageName: 'assets/images/dimensio_gameplay.gif',
            linkIconName: 'assets/images/microsoft-store-icon.png',
            urlString:
                'https://www.microsoft.com/en-us/p/dimensio/9n961b2tj2j1',
          ),
          ProjectTile(
            projectTitle: 'Tower defense Framework',
            projectDetails:
                "Base tower defense framework with a brush to modify the grid map in runtime and path finding algorithms that adapt to the constant changing map.",
            imageName: 'assets/images/pathfind.gif',
            linkIconName: 'assets/images/github-icon.png',
            urlString: 'https://github.com/arttu94/UE-PathFind',
          ),
          ProjectTile(
            projectTitle: 'PARTY CROW',
            projectDetails:
                "Mobile hyper casual mobile games Planetoblaster a 2d infinite runner where you jump from planet to planet, Metro Commute and Planes AiR Control a time managment game drawing paths to avoid collisions.",
            imageName: 'assets/images/mobile.png',
            linkIconName: 'assets/images/play-store-icon.png',
            urlString:
                'https://play.google.com/store/apps/dev?id=6113646205355294524',
          ),
          ProjectTile(
            projectTitle: 'BONGO OVERLAY',
            projectDetails:
                "OpenGL4 project that hooks the mouse and keyboard events to mimic input to bongo cat, meant to be used as an overlay for OBS or locally.",
            imageName: 'assets/images/bongo.gif',
            linkIconName: 'assets/images/github-icon.png',
            urlString: 'https://github.com/arttu94/BongoOverlay',
          ),
        ],
      ),
    );
  }
}
