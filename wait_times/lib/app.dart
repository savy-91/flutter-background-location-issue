import 'package:app/screens/debug.dart';

import 'package:app/utils/material-color-generator.dart';
import 'package:flutter/material.dart';
import 'package:pigment/pigment.dart';

class WaitTimesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wait Times App',
      theme: ThemeData(
          primarySwatch: generateMaterialColor(Pigment.fromString('#4A148C')),
          primaryColorBrightness: Brightness.dark,
          scaffoldBackgroundColor: Pigment.fromString('#121212'),
          accentColor: Pigment.fromString('#4A148C'),
          textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Pigment.fromString('#FFFFFF'),
              displayColor: Pigment.fromString('#FFFFFF')
          )
      ),
      home: DebugPage(),
    );
  }
}