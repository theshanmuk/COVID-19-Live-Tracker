import 'package:coronalivetrakerapp/data/India_data.dart';
import 'package:coronalivetrakerapp/data/world_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:coronalivetrakerapp/themes/app_theme.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'Help_page.dart';
import 'package:coronalivetrakerapp/data/countries_data.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'live_data.dart';
import 'dart:async';
import 'package:coronalivetrakerapp/data/Drawer_tips.dart';




class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {
  String title = 'Refresh Indicator';

  String date_time = DateFormat.yMd().add_jm().format(new DateTime.now());


  @override
  void initState() {
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app_theme.bg,
      appBar: AppBar(
        title: Image.asset('lib/images/covid19.png', height: 20.0),
        backgroundColor: app_theme.bg,
        elevation: 0,
        actions: <Widget>[
          IconButton(
              icon: Icon(LineAwesomeIcons.angle_double_right,
                  color: app_theme.w),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Help_page()),
                );
              })]),

      body: SingleChildScrollView(
         physics: BouncingScrollPhysics(),
          child: Data(),
      ),

    );
  }


  Widget Data() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        motivation_text(),
        live_data(),


      ],
    );
  }

  Widget motivation_text() {
    return Container(
      padding: EdgeInsets.only(left: 25, right: 25, top: 5, bottom: 3),
      child: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5.0, // has the effect of softening the shadow
              spreadRadius: 3.0, // has the effect of extending the shadow
              offset: Offset(
                3.0, // horizontal, move right 10
                5.0, // vertical, move down 10
              ),
            )
          ],

        ),

        child:
        RotateAnimatedTextKit(
            totalRepeatCount: 100000,
            onTap: () {
              print("BE SAFE");
            },
            text: ['              '
                'S T A Y   H O M E   S T A Y   S A F E'
            ],
            textStyle: TextStyle(fontSize: 16, fontFamily: "Horizon",
                color: app_theme.bg,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
            alignment: AlignmentDirectional.topStart // or Alignment.topLeft
        ),

      ),


    );
  }

}