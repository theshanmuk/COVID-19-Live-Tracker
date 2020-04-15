import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:coronalivetrakerapp/data/world_more.dart';
import 'show_alert.dart';


class world_more_data extends StatefulWidget {
  @override
  _world_more_dataState createState() => _world_more_dataState();
}

class _world_more_dataState extends State<world_more_data> {

  Map worldData;


  fetchWorldData() async {
    try {
      http.Response response = await http.get('https://corona.lmao.ninja/all');

      if (response.statusCode == 200) {
        worldData = json.decode(response.body);
        worldData.toString();
        setState(() {
          worldData == null
              ? CircularProgressIndicator()
              : world_more(
            worldData: worldData,
          );
        });
      }
      else {
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
    return world_more(worldData: worldData);
  }
}