import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:coronalivetrakerapp/data/India_data.dart';
import 'show_alert.dart';


class API_Service_India extends StatefulWidget {

  @override
  _API_Service_IndiaState createState() => _API_Service_IndiaState();
}

class _API_Service_IndiaState extends State<API_Service_India  > {

  List countryData;

  fetchCountryData() async {
    try {

      http.Response response = await
      http.get('https://corona.lmao.ninja/countries');

      if (response.statusCode == 200) {

        countryData = json.decode(response.body);
        countryData.toString();

        setState(() {
          countryData == null
              ? CircularProgressIndicator()
              : India_data(countryData: countryData,
          );
        });
      } else {
        return null ;
      }
    } on SocketException catch (_) {
      show_alert();

    } on NoSuchMethodError catch (_) {
      show_alert();

    } catch (_) {
      show_alert();
    }


  }

  @override
  void initState() {
    fetchCountryData();
    update_();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return India_data(countryData: countryData,);
  }


  Widget update_(){
    return Scaffold(

      body:  countryData == null
          ? Center(
        child: CircularProgressIndicator(
          backgroundColor: Colors.white,
          valueColor: new AlwaysStoppedAnimation<Color>(Colors.lightBlueAccent),
        ),
      )
          : RefreshIndicator(
        backgroundColor: Colors.white,
        color: Colors.lightBlueAccent,
        onRefresh: fetchCountryData(),

      ),
    );
  }



}