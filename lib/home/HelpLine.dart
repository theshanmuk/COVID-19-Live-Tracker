import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:coronalivetrakerapp/themes/app_theme.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpLine extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: app_theme.bg,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(
          left: 20,
        ),
        child: Column(
          children: <Widget>[
            Center(
                child: Text("H E L P  L I N E",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    inherit: true,
                  ),
                )),
            Divider(color: app_theme.w,height: 13,endIndent:17),
            SizedBox(height: 30),
            InkWell(
              child: new Text("N A T I O N A L",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  inherit: true,
                  color: Colors.white,
                  letterSpacing: 0.4,
                ),
              ),
            ),
            SizedBox(height: 20),
            vaweCard(
              context,
              "National",
              "1075",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "National",
              "1800-112-545",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            SizedBox(height: 30),
            InkWell(
              child: new Text("C E N T R A L",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  inherit: true,
                  letterSpacing: 0.4,
                ),
              ),
            ),
            SizedBox(height: 10),
            vaweCard(
              context,
              "Central",
              "+91-11-23978046",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            SizedBox(height: 30),
            InkWell(
              child: new Text(
                "S T A T E",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  inherit: true,
                  letterSpacing: 0.4,
                ),
              ),
            ),
            SizedBox(height: 10),
            vaweCard(
              context,
              "Andhra Pradesh",
              "0866-2410978",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "Arunachal Pradesh",
              "9536055743",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "Assam",
              "6913347770",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "Bihar",
              "104",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "Chhattisgarh",
              "077122-35091",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "Goa",
              "104",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "Gujarat",
              "104",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "Haryana",
              "8558893911",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "Himachal Pradesh",
              "104",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "Jharkhand",
              "104",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "Karnataka",
              "104",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "Kerala",
              "0471-2552056",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "Madhya Pradesh",
              "0755-2527177",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "Maharashtra",
              "020-26127394",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "Manipur",
              "3852411668",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "Meghalaya",
              "9366090748",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "Mizoram",
              "102",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "Nagaland",
              "7005539653",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "Odisha",
              "9439994859",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "Punjab",
              "104",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "Rajasthan",
              "0141-2225624",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "Sikkim",
              "104",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "Tamil Nadu",
              "044-29510500",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "Telangana",
              "104",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "Tripura",
              "0381-2315879",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "Uttarakhand",
              "104",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "Uttar Pradesh",
              "18001805145",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "West Bengal",
              "3323412600",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "Andaman and Nicobar Islands",
              "03192-232102",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "Chandigarh",
              "9779558282",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "Dadra Nagar",
              "104",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "Delhi",
              "011-22307145",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "Jammu & Kashmir",
              "0194-2440283",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "Ladakh",
              "1982256462",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "Lakshadweep",
              "4896263742",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
            vaweCard(
              context,
              "Puducherry",
              "104",
              Colors.grey.shade100,
              Color(0xFF3CB371),
            ),
          ],
        ),
      ),
    );
  }


  Widget vaweCard(BuildContext context, String name, String fields,
      Color fillColor, Color bgColor) {
    return Container(
      margin: EdgeInsets.only(
        top: 23,
        right: 20,bottom: 15,
      ),
      padding: EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
              IconButton(
                icon: Icon(Icons.phone_in_talk),
                color: Colors.green,
                onPressed: () => launch("tel://$fields"),
              ),

          Divider(color: app_theme.w),

          Column(


            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: app_theme.bglite,
                    fontFamily: 'Horizon',
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),


              Text(
                "$fields",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18,
                  color: app_theme.bglite,
                  fontWeight: FontWeight.normal,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
