import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:coronalivetrakerapp/data/countries_data.dart';
import 'show_alert.dart';
import 'package:coronalivetrakerapp/themes/app_theme.dart';
import 'package:intl/intl.dart';

class API_Service_Countries extends StatefulWidget {

  @override
  _API_Service_CountriesState createState() => _API_Service_CountriesState();
}

class _API_Service_CountriesState extends State<API_Service_Countries > {

  List countryData;
  var refreshKey = GlobalKey<RefreshIndicatorState>();

  fetchCountryData() async {
    try {

      http.Response response = await http.get('https://corona.'
          'lmao.ninja/countries?sort=cases');

      if (response.statusCode == 200) {

        countryData = json.decode(response.body);
        countryData.toString();

        setState(() {
          countryData == null
              ? CircularProgressIndicator()
              : countries_data(
            countryData: countryData,
          );
        });
      } else {
        return null;

      }
    } on SocketException catch (_) {
      show_alert();

    } on NoSuchMethodError catch (_) {
      show_alert();

      } catch (_) {
        show_alert();
      }


  }

  Future<Null> refreshList() async {
    refreshKey.currentState?.show(atTop: false);
    await Future.delayed(Duration(seconds: 2));

    setState(() {
      countryData;
    });
    return null;
  }

  @override
  void initState() {
    fetchCountryData();
    refreshList();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    final nf = NumberFormat("#,###");
    return RefreshIndicator(
        key: refreshKey,
        onRefresh: refreshList,
        child: ListView.builder(
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
                      title: Text(countryData[index]
                      ['country'].toString(),
                          style: TextStyle(color: Colors.white70,
                              fontSize: 25)),
                      trailing: Text(countryData[index]
                      ['countryInfo']['iso2'].toString(),
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
                                child: Text(nf.format(countryData[index]['recovered']),
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

        itemCount:  countryData == null?0:205),
    );
  }


}
