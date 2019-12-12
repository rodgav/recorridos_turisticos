import 'package:flutter/material.dart';
import 'package:recorridos_turisticos/src/UI/Principal.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreenUI extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreenUI> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 10,
        navigateAfterSeconds: Principal(),
        title: Text(
          'Bienvenido a Corredores Turisticos PUNO',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        loadingText: Text(
          'Realizado por: Veronica Sucari Sucari',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
        ),
        image: Image(image: ExactAssetImage('imagenes/logo.png')),
        backgroundColor: Colors.orangeAccent,
        styleTextUnderTheLoader: TextStyle(),
        photoSize: 100.0,
        onClick: () => print("CARGANDO..."),
        loaderColor: Colors.red);
  }
}
