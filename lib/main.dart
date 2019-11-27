import 'dart:io';

import 'package:flutter/material.dart';
import 'package:recorridos_turisticos/src/app.dart';

class AppHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

void main(){
  HttpOverrides.global = AppHttpOverrides();
  runApp(App());
}

