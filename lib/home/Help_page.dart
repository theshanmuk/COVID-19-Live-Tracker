import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:coronalivetrakerapp/themes/app_theme.dart';
import 'HelpLine.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class Help_page extends StatelessWidget {
  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        elevation: 0,
        title:Text('Help',
          style: TextStyle(color: app_theme.w),
        ),
        backgroundColor: app_theme.bg,
      ),
      body: Container(
        color: app_theme.bg,
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Card(

              color: Colors.white70,
              child: ListTile(
                title: Text('COVID-19',
                    style: TextStyle(color: app_theme.bg,
                        fontWeight: FontWeight.bold)),
                subtitle: Text('HelpDesk',style: TextStyle(
                    color: app_theme.bglite)),
                trailing: Icon(LineAwesomeIcons.whatsapp,color: Colors.black38),
                onTap: () {
                  _launchURL('https://api.whatsapp.com/send?phone=919013151515');
                },
              ),
            ),
            SizedBox(width: 15),
            Card(
              color: Colors.white70,
              child: ListTile(
                title: Text('HelpLine',
                    style: TextStyle(color: app_theme.bg,
                        fontWeight: FontWeight.bold)),
                subtitle: Text('Numbers',style: TextStyle(
                    color: app_theme.bglite)),
                trailing: Icon(LineAwesomeIcons.phone,color: Colors.black38),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => HelpLine()),
                  );
                },
              ),
            ),
            SizedBox(width: 15),
            Card(
              color: Colors.white70,
              child: ListTile(

                title: Text('Donate',
                    style: TextStyle(color: app_theme.bg,
                        fontWeight: FontWeight.bold)),
                subtitle: Text('WHO',style: TextStyle(color: app_theme.bglite)),
                trailing: Icon(LineAwesomeIcons.heartbeat,color: Colors.black38),
                onTap: () {
                  _launchURL('https://www.who.int/emergencies/'
                      'diseases/novel-coronavirus-2019/advice-for-public');
                },
              ),
            ),

          animation(),
          SizedBox(height: 90),
             Icon(LineAwesomeIcons.github,color: Colors.white12),

            SizedBox(height: 5),

            Text(' Developed'
                     ' by'
               ' Shanmuk Michael',
              style: TextStyle(color: Colors.white12),
            ),

          ],
        ),
      ),
    );
  }
}


class animation extends StatefulWidget {
  @override
  _animationState  createState() => _animationState();
}

class _animationState extends State<animation> with
    SingleTickerProviderStateMixin {
  Animation virusBounce;
  Animation shadowFade;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
    AnimationController(vsync: this, duration: Duration(milliseconds: 900))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          animationController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          animationController.forward(from: 0.1);
        }
      });
    virusBounce = Tween(begin: Offset(-0.1, 0), end: Offset(0, -40.0))
        .animate(animationController);
    shadowFade = Tween(begin: 10.0, end: 10.0).animate(CurvedAnimation(
        curve: Interval(0.4, 1.0), parent: animationController));

    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
       constraints: BoxConstraints(),
      child: Stack(
       children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 140),
          child: Center(
            child: Column(
              children: <Widget>[
                Transform.translate(
                  offset: virusBounce.value,
                  child: Image(
                    alignment: Alignment.centerRight,
                    image: AssetImage("lib/images/corona.png"),
                    height: 120,
                    width: 120,
                  ),
                ),
              ],
            ),
          ),
        ),
    ],
            ),
      ),
    );
  }
}
