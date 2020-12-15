import 'package:ArturoPortfolio/projectcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

List<StaggeredTile> _staggeredTiles = const [
  const StaggeredTile.count(4, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(2, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
];

List<Widget> _tiles = [
  ProjectCard(
    projectName: 'DIMENSIO',
    imageName: 'assets/images/dimensio_gameplay.gif',
    urlString: 'https://www.microsoft.com/en-us/p/dimensio/9n961b2tj2j1',
  ),
  ProjectCard(
    projectName: 'PLANES: AIR CONTROL 3D',
    imageName: 'assets/images/planes_icon.png',
    urlString:
        'https://play.google.com/store/apps/details?id=com.PartyCrow.Planes',
  ),
  ProjectCard(
    projectName: 'BONGO OVERLAY',
    imageName: 'assets/images/bongo.gif',
    urlString: 'https://github.com/arttu94/BongoOverlay',
  ),
  ProjectCard(
    projectName: 'METRO COMMUTE',
    imageName: 'assets/images/metro_icon.png',
  ),
  ProjectCard(
    projectName: 'PLANETOBLASTER',
    imageName: 'assets/images/planeto_icon.png',
    urlString:
        'https://play.google.com/store/apps/details?id=com.TroshkyGames.Planetoblaster',
  ),
];

class ProjectGridView extends StatefulWidget {
  ProjectGridView({Key key}) : super(key: key);

  @override
  _ProjectGridViewState createState() => _ProjectGridViewState();
}

class _ProjectGridViewState extends State<ProjectGridView> {
  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.extent(
      maxCrossAxisExtent: 300,
      shrinkWrap: true,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      staggeredTiles: _staggeredTiles,
      children: _tiles,
      padding: const EdgeInsets.all(10.0),
    );
  }
}
