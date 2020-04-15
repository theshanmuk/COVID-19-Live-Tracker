import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:coronalivetrakerapp/themes/app_theme.dart';

class Drawer_tips extends StatefulWidget {

  @override
  _Drawer_tips createState() => _Drawer_tips();

}


class _Drawer_tips extends State<Drawer_tips> with SingleTickerProviderStateMixin {

  Animation virusBounce;
  Animation shadowFade;
  AnimationController animationController;


  @override
  void initState() {
    super.initState();
    animationController =
    AnimationController(vsync: this, duration: Duration(milliseconds: 600))
      ..addListener(() {
        setState(() {});


      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          animationController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          animationController.forward(from: 0.0);
        }
      });
    virusBounce = Tween(begin: Offset(0, 0), end: Offset(0, -20.0))
        .animate(animationController);
    shadowFade = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
        curve: Interval(0.7, 1.0), parent: animationController));

    animationController.forward();
  }


  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void _showModalSheet() {
    animationController;
    showModalBottomSheet(context: context,
        backgroundColor: app_theme.bglite,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius:
          BorderRadius.only(topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0)),
        ),
        builder: (builder) {
      return Container(
        padding: EdgeInsets.all(10.0), height: 606,
        decoration: BoxDecoration(
            color: Colors.white60,
            borderRadius: BorderRadius.all(Radius.circular(15)),
            boxShadow: [BoxShadow(
            blurRadius: 10, color: Colors.black38, spreadRadius: 5)]),

        child:  Column(
          children: <Widget>[
            Text('P R E C A U T I O N S',
              style: TextStyle(color: app_theme.bglite),),
            SizedBox(width: 15,),
            Divider(color: app_theme.w, indent: 15, endIndent: 15,),

           Transform.translate(
            offset: virusBounce.value,
            child: Image(
              repeat: ImageRepeat.repeatX,
            alignment: Alignment.centerRight,
            image: AssetImage("lib/images/symptoms.png"),
            height: 350,
            width: 270,

          ),
          ),

          SingleChildScrollView(
           scrollDirection: Axis.horizontal,

           child: Row(
              children: <Widget>[
                vaweCard(

                  context,
                  'Clean your hands often',
                  "Wash your hands often with soap and water for at least "
                      "20 seconds "
                      "especially after you have been in a public place,"
                      " or after blowing your nose,"
                      "coughing, or sneezing",
                  Colors.grey.shade100,
                  Colors.black12,
               "lib/images/wash.png",
                ),
                vaweCard(
                  context,
                  "Avoid close contact",
                  "Use a hand sanitizer that contains at least 60% alcohol."
                      " Cover all surfaces of your hands and rub them together until they feel dry",
                  Colors.grey.shade100,
                  Colors.black12,
                  "lib/images/clean.png",
                ),

                vaweCard(
                  context,
                  "Stay home if you’re sick",
                  "Stay home if you are sick, except to get medical care",
                  Colors.grey.shade100,
                  Colors.black12,
                  "lib/images/home.png",
                ),
                vaweCard(
                  context,
                  "Clean and Disinfect",
                  "Clean and disinfect frequently touched surfaces daily. "
                      "This includes tables, doorknobs, light switches,"
                      " countertops, handles, desks, phones, keyboards, "
                      "toilets, faucets, and sinks",
                  Colors.grey.shade100,
                  Colors.black12,
                  "lib/images/sneeze.png",
                ),
                vaweCard(
                  context,
                  "Wear a facemask",
                  "You should wear a facemask when you are "
                      "around other people (e.g., sharing a room or vehicle) "
                      "and before you enter a healthcare provider’s office",
                  Colors.grey.shade100,
                  Colors.black12,
                  "lib/images/mask.png",
                ),


















        ],
          ),
          ),

           ],
                 ),
               );
    });
  }


  Widget vaweCard(BuildContext context, String name, String fields,
      Color fillColor, Color bgColor,  String image) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
     child:Container(
      width: 320,
      height: 180,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 3.0, // has the effect of softening the shadow
            spreadRadius: 1.0, // has the effect of extending the shadow
            offset: Offset(
              1.0, // horizontal, move right 10
              1.0, // vertical, move down 10
            ),
          )
        ],
      ),

      child: Stack(
        overflow: Overflow.clip,


        children: <Widget>[

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              Image(
                matchTextDirection: true,
                alignment: Alignment.center,
                image: AssetImage(image),
                height: 50,
                width: 60,
              ),


              Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: app_theme.bglite,
                    fontFamily: 'Horizon',
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4,),

              Text(
                fields,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: app_theme.bglite,
                  fontWeight: FontWeight.normal,
                ),
              )
            ],
          )
        ],
      ),
     ),
    );
  }

@override
  Widget build(BuildContext context) {
    return  Container(
        decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
        BoxShadow(
        color: Colors.black12,
            blurRadius: 8,
           spreadRadius: 1,
           offset: Offset(2, 2),
        ),
             ]),
            child: MaterialButton(

                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                ),
                minWidth: 330,
                height: 30,
                color: Colors.blueGrey,
                onPressed: _showModalSheet,
                child: Text('P R E C A U T I O N S',
                    style: TextStyle(color: app_theme.bglite,
                    fontWeight: FontWeight.bold)),
            )
    );
  }


}






