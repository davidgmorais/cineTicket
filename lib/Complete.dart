import 'package:cineticketfinal/FirstPage.dart';
import 'package:cineticketfinal/ThirdPage.dart';
import 'package:cineticketfinal/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Complete extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Complete();
  }
}

class _Complete extends State<Complete> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(
              Icons.playlist_add_check,
              size: 150,
              color: Colors.black,
            ),
            width: screenWidth,
          ),
          Text(
            "Tickets purchased with success.\nFind them in the tickets tab",
            style: TextStyle(fontSize: 21),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.all(20),
          ),
          RaisedButton(
            padding: EdgeInsets.symmetric(horizontal: 90, vertical: 15),
            onPressed: () {
              Navigator.push(context,
                  PageRouteBuilder(pageBuilder: (_, a1, a2) => MyHomePage(2)));
            },
            child: Text("See tickets"),
            color: Color.fromRGBO(147, 172, 243, 1),
          ),
          Padding(
            padding: EdgeInsets.all(10),
          ),
          RaisedButton(
            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
            onPressed: () {
              Navigator.push(context,
                  PageRouteBuilder(pageBuilder: (_, a1, a2) => MyHomePage(0)));
            },
            child: Text("Go back home"),
            color: Color.fromRGBO(147, 172, 243, 1),
          ),
        ],
      ),
    );
  }
}
