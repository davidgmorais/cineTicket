import 'dart:math';

import 'package:cineticketfinal/FirstPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'MovieDetails.dart';
import 'package:cineticketfinal/MovieList.dart';
import 'MovieRepo.dart';
import 'Movie.dart';
import 'MovieCarousel.dart';

class SecondPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SecondPage();
  }
}

class _SecondPage extends State<SecondPage> {
  int _tabState = 0;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    List<Widget> list = [
      MovieList(),
      MovieCarousel(),
    ];

    return Scaffold(
      appBar: CupertinoNavigationBar(
        transitionBetweenRoutes: false,
        trailing: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Icon(Icons.search),
            Icon(Icons.tune),
          ],
        ),
        leading: Row(
          children: <Widget>[
            IconButton(
              onPressed: () {
                setState(() {
                  _tabState = 1;
                });
              },
              icon: Icon(Icons.view_carousel),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _tabState = 0;
                });
              },
              icon: Icon(Icons.view_list),
            ),
          ],
        ),
      ),
      body: list[_tabState],
    );
  }
}

class NewWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Nws();
}

class _Nws extends State<NewWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.blueGrey,
    );
  }
}

class BodyWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BodyWidgetState();
}

class BodyWidgetState extends State<BodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.pink,
    );
  }
}
