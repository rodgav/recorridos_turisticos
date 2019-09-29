import 'package:flutter/material.dart';
import 'package:recorridos_turisticos/src/UI/SplashScreen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Recorridos Turisticos',
        theme: ThemeData(primarySwatch: Colors.orange, fontFamily: 'Regencie'),
        home: SplashScreenUI());
  }
}
