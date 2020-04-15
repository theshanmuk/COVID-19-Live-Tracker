import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:coronalivetrakerapp/themes/app_theme.dart';
import 'package:intl/intl.dart';

class countries_data extends StatelessWidget {

  final List countryData;
  const countries_data({Key key, this.countryData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nf = NumberFormat("#,##,###");
    return ListView.builder(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context,index){
          return Card(
            elevation: 2,
            color: app_theme.bglite,
            child: Column(
              children: <Widget>[

                Column(
                  children: [
                    ListTile(
                      title: Text(countryData==null?'Stay':countryData[index]
                      ['country'],
                          style: TextStyle(color: Colors.white70,
                              fontSize: 25)),
                      trailing: Text(countryData==null?'Safe':countryData[index]
                      ['countryInfo']['iso2'],
                          style: TextStyle(color: Colors.white70,
                              fontSize: 25)),
                    ),
                    Image.network(countryData[index]['countryInfo']['flag'],
                      height: 25,
                    ),
                    Divider(color: app_theme.w, indent: 6, endIndent: 6),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: <Widget>[

                              Text('Confirmed',
                                  style: app_theme.stdtw),
                              Padding(
                                padding: app_theme.pv10,
                                child: Text(nf.format(countryData[index]['cases']),
                                    style: app_theme.stdtb.copyWith(color: app_theme.w)),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Text('Recovered', style: app_theme.stdtw),
                              Padding(
                                padding: app_theme.pv10,
                                child: Text(nf.format(['recovered']),
                                    style: app_theme.stdtb.copyWith(color: app_theme.g)),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Text('Deaths', style: app_theme.stdtw),
                              Padding(
                                padding: app_theme.pv10,
                                child: Text(nf.format(countryData[index]['deaths']),
                                    style: app_theme.stdtb.copyWith(color: app_theme.r)),
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
        itemCount: countryData== null?0:countryData.length);

  }



}