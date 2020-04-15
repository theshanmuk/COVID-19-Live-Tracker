import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:coronalivetrakerapp/themes/app_theme.dart';
import 'package:intl/intl.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:coronalivetrakerapp/services//world_more_data.dart';


class world_data extends StatelessWidget {



  final Map worldData;
  const world_data({Key key, this.worldData}) : super(key: key);




      @override
  Widget build(BuildContext context) {
    final nf = NumberFormat("#,##,###");
    return  ListView.builder(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
         itemBuilder: (context,index){
        return Container(
          child: Column(
             children: <Widget>[
               Column(
                children: <Widget>[
                  StatusPanel(
                    title: 'Confirmed',
                    textColor: Colors.white70,
                    count: nf.format(worldData['cases']),
                    subColor: app_theme.w,
                    icon1: LineAwesomeIcons.arrow_circle_o_right,
                    iconColor: Colors.white70,
                  ),
                  StatusPanel(
                    title: 'Active',
                    textColor: Colors.white70,
                    count: nf.format(worldData['active']),
                    subColor: Colors.cyan,
                  ),
                  StatusPanel(
                    title: 'Recovered',
                    textColor: Colors.white70,
                    count: nf.format(worldData['recovered']),
                    subColor: app_theme.g,
                  ),
                      StatusPanel(
                        title: 'Deaths',
                        textColor: Colors.white70,
                        count: nf.format(worldData['deaths']),
                        subColor: app_theme.r,
                      ),
                  StatusPanel(
                    title: 'AffectedCountries',
                    textColor: Colors.white70,
                    count: nf.format(worldData['affectedCountries']),
                    subColor: Colors.yellowAccent,
                  ),

                ],

               ),

      ],
          ),
    );
         },
          itemCount: worldData == null?0:1 );
  }
}
class StatusPanel extends StatelessWidget {



  final String title;
  final String count;
  final Color textColor;
  final Color subColor;
  final IconData icon1;
  final Color iconColor;


  const StatusPanel(
      {Key key,  this.title, this.count, this.textColor, this.subColor,
        this.icon1, this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ListTile(
      //leading: Icon(Icons.public,color: Colors.white60),
        trailing: IconButton(icon: Icon(icon1),
          color: Colors.white70,
          iconSize: 35,
          onPressed: () {  Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => world_more_data()),
          );},
        ),
      title: Text(title, textAlign: TextAlign.left,
        style: TextStyle(fontWeight: FontWeight.normal,
            fontSize: 16, color: textColor),),
      subtitle: Text(count, textAlign: TextAlign.left,
        style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 40 , color: subColor),)
    );
  }

}
