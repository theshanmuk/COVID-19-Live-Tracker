import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:coronalivetrakerapp/themes/app_theme.dart';
import 'package:intl/intl.dart';

class world_more extends StatelessWidget {

  Map worldData;
  world_more({Key key, this.worldData}) : super(key: key);
  String title = 'Refresh Indicator';

  @override
  Widget build(BuildContext context) {
    final nf = NumberFormat("#,##,###");
    return Scaffold(
        appBar: AppBar(
          title: Text('World',
              style: TextStyle(color: app_theme.w)),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: app_theme.bg,
      body: worldData == null
          ? Center( heightFactor: 25,
            child: CircularProgressIndicator(backgroundColor: app_theme.bglite))
      : SingleChildScrollView(
        physics: BouncingScrollPhysics(),
              padding: EdgeInsets.all(10),
       child: ListView.builder(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context,index){
         return Column(
          children: [
           Card(
            elevation: 2,
            color: app_theme.bglite,
             child: Column(
                  children: [
                    ListTile(
                      title: Text('Today Cases',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white70,
                              fontSize: 25))),
                    Divider(color: app_theme.w, indent: 40, endIndent: 40),
                    Padding(
                      padding: app_theme.pv10,
                      child: Text(nf.format(worldData['todayCases']),
                          style: app_theme.stdtb.copyWith(color: app_theme.g,
                              fontSize: 30))),

                  ])),

            Card(
                elevation: 2,
                color: app_theme.bglite,
                child: Column(
                    children: [
                      ListTile(
                          title: Text('Today Deaths',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white70,
                                  fontSize: 25))),
                      Divider(color: app_theme.w, indent: 40, endIndent: 40),
                      Padding(
                          padding: app_theme.pv10,
                          child: Text(nf.format(worldData['todayDeaths']),
                              style: app_theme.stdtb.copyWith(color: app_theme.r,
                                  fontSize: 30))),

                    ])),

          Card(
          elevation: 2,
          color: app_theme.bglite,
          child: Column(
          children: [

                    ListTile(
                      title: Text('Critical',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white70,
                              fontSize: 25)),

                    ),

                    Divider(color: app_theme.w, indent: 40, endIndent: 40),
                    Padding(
                        padding: app_theme.pv10,
                        child: Text(nf.format(worldData['critical']),
                            style: app_theme.stdtb.copyWith(color: Colors.cyan,
                                fontSize: 30))),

          ])),

          Card(
          elevation: 2,
          color: app_theme.bglite,
          child: Column(
          children: [

            ListTile(
                      title: Text('Tests',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white70,
                              fontSize: 25)),

                    ),

                    Divider(color: app_theme.w, indent: 40, endIndent: 40),
                    Padding(
                        padding: app_theme.pv10,
                        child: Text(nf.format(worldData['tests']),
                            style: app_theme.stdtb.copyWith(
                                color: Colors.yellowAccent,
                                fontSize: 30))),

          ])),
          ],
          );

        },
        itemCount: worldData == null?0:1 ),
    ),

    );
  }
}

