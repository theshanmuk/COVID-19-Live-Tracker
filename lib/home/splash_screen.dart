import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:coronalivetrakerapp/themes/app_theme.dart';
import 'package:coronalivetrakerapp/home/home.dart';
import 'dart:async';


class splash_screen extends StatefulWidget {
  @override
  _splash_screenState  createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> with
    SingleTickerProviderStateMixin {
  Animation virusBounce;
  Animation shadowFade;
  AnimationController animationController;
  startTime() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }
  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/Home');
  }

  @override
  void initState() {
    super.initState();
    animationController =
    AnimationController(vsync: this, duration: Duration(milliseconds: 500))
      ..addListener(() {
        setState(() {});


      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          animationController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          animationController.forward(from: 0.0);
        }
      });
    virusBounce = Tween(begin: Offset(0, 0), end: Offset(0, -30.0))
        .animate(animationController);
    shadowFade = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
        curve: Interval(0.7, 1.0), parent: animationController));

    animationController.forward();

    startTime();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: app_theme.bg,
      body: Center(
        child: Container(
            padding: EdgeInsets.only(top:240),
          child: Center(
            child: Column(
                  children: <Widget>[
              Transform.translate(
                  offset: virusBounce.value,
                 child: Image(
                       alignment: Alignment.center,
                      image: AssetImage("lib/images/corona.png"),
                     height: 190,
                     width: 170,
                    ),
                ),
                  SizedBox(height: 35,),
                Image.asset('lib/images/covid19.png',
                    alignment: Alignment.center,
                    height: 120,
                     width: 210),

                Text('T R A C K E R',
                  style: TextStyle(
                  color: Colors.white70,
                  fontSize: 22.0,
                 ),
              ),

            ]

        ),

      ),


    ),
      ),

    );
  }
}