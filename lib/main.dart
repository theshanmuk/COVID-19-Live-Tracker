import 'package:flutter/material.dart';
import 'home/home.dart';
import 'package:coronalivetrakerapp/home/splash_screen.dart';
import 'dart:io';

import 'package:flutter/foundation.dart';
void main() {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
    if (kReleaseMode)
      exit(1);
  };
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid19',
      theme: ThemeData(
      ),
      home: splash_screen(),
      routes: <String, WidgetBuilder>{
        '/Home': (BuildContext context) => new Home()
      }

    );
  }
}

