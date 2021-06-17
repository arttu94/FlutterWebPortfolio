import 'package:arturo_portfolio/particles_flutter/particles_flutter.dart';
import 'package:flutter/material.dart';

class AnimatedBackground extends StatefulWidget {
  AnimatedBackground({Key key}) : super(key: key);

  @override
  _AnimatedBackgroundState createState() => _AnimatedBackgroundState();
}

class _AnimatedBackgroundState extends State<AnimatedBackground> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenArea = screenHeight * screenWidth;
    double particleCount = (screenArea * 100) / 1500000;
    double particleSize = (screenArea * 4) / 1500000;
    double particleConnectDistance = (screenArea * 200) / 1500000;
    return Center(
      child: CircularParticle(
        key: UniqueKey(),
        awayRadius: 0,
        numberOfParticles: particleCount.clamp(20, 80),
        speedOfParticles: 0.25,
        height: screenHeight,
        width: screenWidth,
        onTapAnimation: false,
        particleColor: Colors.blueGrey.withAlpha(40),
        awayAnimationDuration: Duration(milliseconds: 600),
        maxParticleSize: particleSize.clamp(2, 3),
        isRandSize: false,
        isRandomColor: false,
        randColorList: [
          Colors.blue.withAlpha(150),
          Colors.yellow.withAlpha(150),
          Colors.green.withAlpha(150),
          Colors.indigo.withAlpha(150),
          Colors.red.withAlpha(150),
        ],
        awayAnimationCurve: Curves.easeInOut,
        enableHover: false,
        hoverColor: Colors.white,
        hoverRadius: 10,
        connectDotsDistance: particleConnectDistance.clamp(100, 150),
        connectDots: true,
        directionChangeTimeMili: 2500,
      ),
    );
  }
}
