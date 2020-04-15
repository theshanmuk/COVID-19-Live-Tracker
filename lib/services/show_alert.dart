import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class show_alert extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:AlertDialog(
            title: new Text("Unknow Error"),
            content: new Text("Could not retrieve data. "
                "Please try again later.(may be API UnAvailable)"),
            actions: <Widget>[
              new FlatButton(
                child: new Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ));
  }
}


