import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:coronalivetrakerapp/themes/app_theme.dart';
import 'package:coronalivetrakerapp/data/world_data.dart';
import 'show_alert.dart';



class API_Service extends StatefulWidget {
  @override
  _API_ServiceState createState() => _API_ServiceState();
}

class _API_ServiceState extends State<API_Service> {

  Map worldData;

  fetchWorldData() async {
    try {
      http.Response response = await http.get('https://corona.lmao.ninja/all/');

      if (response.statusCode == 200) {
        worldData = json.decode(response.body);
        worldData.toString();
        setState(() {
        worldData  == null
          ? CircularProgressIndicator()
              : world_data(
          worldData: worldData,
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


    @override
    void initState() {
      super.initState();
      fetchWorldData();
    }


  @override
  Widget build(BuildContext context) {

    return  worldData == null
        ? CircularProgressIndicator(backgroundColor: app_theme.bglite)
        : world_data(
        worldData: worldData
    );
  }

}