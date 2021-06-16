import 'package:flutter/material.dart';
import 'MK2/pages/home.dart';

final navKey = new GlobalKey<NavigatorState>();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arturo Glez Portfolio',
      home: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: HomePage(),
      ),
    );
  }
}
