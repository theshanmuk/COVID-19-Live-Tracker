import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:coronalivetrakerapp/themes/app_theme.dart';
import 'package:intl/intl.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class India_data extends StatelessWidget {

  final List countryData;
  const India_data({Key key, this.countryData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nf = NumberFormat("#,##,###");
    return ListView.builder(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context,index){
          return Card(
            color: Colors.white60,
            child: Column(
              children: <Widget>[
                Column(
                  children: [
                    ListTile(
                      title: Text(countryData[92]
                      ['country'],
                          style: TextStyle(color: app_theme.bglite,
                              fontSize: 40)),
                      trailing: IconButton(icon: Icon(
                          LineAwesomeIcons.arrow_circle_o_right),
                        color: app_theme.bglite,
                        iconSize: 35,
                        onPressed: () {  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => india_more(context)),
                        );},
                      ),
                    ),
                    Image.network(countryData[92]['countryInfo']['flag'],
                      height: 25,
                    ),
                    Divider(color: app_theme.bglite, indent: 6, endIndent: 6),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: <Widget>[

                              Text('Confirmed',
                                  style: TextStyle(color: app_theme.bglite,)),
                              Padding(
                                padding: app_theme.pv10,
                                child: Text(nf.format(
                                countryData[92]['cases']).toString(),
                                    style:  TextStyle(color: app_theme.bglite,
                                    fontWeight: FontWeight.bold)),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Text('Recovered', style: TextStyle(
                                  color: app_theme.bglite)),
                              Padding(
                                padding: app_theme.pv10,
                                child: Text(nf.format(
                                countryData[92]['recovered']),
                                    style:  TextStyle(color: Colors.green[800],
                                        fontWeight: FontWeight.bold,
                                    )),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Text('Deaths',  style: TextStyle(
                                  color: app_theme.bglite)),
                              Padding(
                                padding: app_theme.pv10,
                                child: Text(nf.format(
                                    countryData[92]['deaths']),
                                    style: TextStyle(color: Colors.red[800],
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ),
                      ],

                    ),
                  ],
                ),
              ],
            ),
          );
        },
        itemCount: countryData == null?0:1 );
  }

  Widget india_more(context) {
    final nf = NumberFormat("#,##,###");
    return Scaffold(
      appBar: AppBar(
        title: Text('India',
            style: TextStyle(color: app_theme.w)),
          backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: app_theme.bg,
      body:  countryData == null
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
                                        fontSize: 30))),
                            Divider(color: app_theme.w, indent: 40, endIndent: 40),
                            Padding(
                                padding: app_theme.pv10,
                                child: Text(nf.format(
                                countryData[92]["todayCases"]),
                                    style: app_theme.stdtb.copyWith(
                                        color: app_theme.g,
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
                                child: Text(nf.format(
                                    countryData[92]['todayDeaths']),
                                    style: app_theme.stdtb.copyWith(
                                        color: app_theme.r,
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
                                child: Text(nf.format(countryData[92]['critical']),
                                    style: app_theme.stdtb.copyWith(
                                        color: Colors.cyan,
                                        fontSize: 30))),

                          ])),
                  Card(
                      elevation: 2,
                      color: app_theme.bglite,
                      child: Column(
                          children: [

                            ListTile(
                              title: Text('Active',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white70,
                                      fontSize: 25)),

                            ),

                            Divider(color: app_theme.w, indent: 40, endIndent: 40),
                            Padding(
                                padding: app_theme.pv10,
                                child: Text(nf.format(
                                    countryData[92]['active']),
                                    style: app_theme.stdtb.copyWith(
                                        color: Colors.deepOrangeAccent,
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
                                child: Text(nf.format(
                                    countryData[92]['tests']),
                                    style: app_theme.stdtb.copyWith(
                                        color: Colors.yellowAccent,
                                        fontSize: 30))),

                          ])),
                ],
              );

            },
            itemCount: countryData == null?0:1 ),
      ),

    );
  }









}