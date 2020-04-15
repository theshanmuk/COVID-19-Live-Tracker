import 'package:flutter/material.dart';
import 'package:coronalivetrakerapp/themes/app_theme.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:coronalivetrakerapp/services/API_Service.dart';
import 'package:coronalivetrakerapp/services/API_Service_Countries.dart';
import 'package:coronalivetrakerapp/services/API_Service_India.dart';
import 'package:coronalivetrakerapp/data/Drawer_tips.dart';
import 'package:intl/intl.dart';


class live_data extends StatefulWidget {
  @override
  _live_dataState createState() => _live_dataState();
}

class _live_dataState extends State<live_data> {
  String date_time = DateFormat.yMMMMd().add_jm().format(new DateTime.now());

  @override
  void initState() {
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
  }


  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(width: 6, height: 2),

                Text(
                  'L I V E',
                  style: TextStyle(color: Colors.red, fontSize: 13),
                ),
                SizedBox(width: 2, height: 2),
                SpinKitThreeBounce(color: Colors.white, size: 15.0),
                Spacer(),
                Icon(Icons.timer, color: Colors.blueGrey, size: 15,),
                SizedBox(width: 4),
                Text('$date_time', style: TextStyle(color: Colors.blueGrey)),
              ],
            ),
            Divider(color: app_theme.bg,indent: 4,endIndent: 4),
            API_Service(),
            SizedBox(width: 50),
            Drawer_tips(),
            API_Service_India(),
            SizedBox(width: 50),
            API_Service_Countries(),
          ],

        ),
      ),
    );
  }





}
