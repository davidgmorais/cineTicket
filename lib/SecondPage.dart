import 'package:cineticketfinal/BuyTicket.dart';
import 'package:cineticketfinal/SearchPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cineticketfinal/MovieList.dart';
import 'Cinema.dart';
import 'Movie.dart';
import 'MovieRepo.dart';
import 'MovieCarousel.dart';

class SecondPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SecondPage();
  }
}

List<Movie> movies = MovieRepo.LoadAll();
String cinemaIndex, genreIndex;
List<String> genres = [
  "Action",
  "Comedy",
  "Romance",
  "Thriller",
  "Documentary",
  "Musical",
  "Sci-fi",
  "Drama",
  "Horror"
];

class _SecondPage extends State<SecondPage> {
  int _tabState = 0;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    List<Widget> list = [
      MovieList(movies),
      MovieCarousel(movies),
    ];

    return Scaffold(
      appBar: CupertinoNavigationBar(
        transitionBetweenRoutes: false,
        trailing: GestureDetector(
          child: Icon(
            Icons.search,
          ),
          onTap: () {
            Navigator.push(context,
                PageRouteBuilder(pageBuilder: (_, a1, a2) => SearchPage()));
          },
        ),
        leading: Row(
          children: <Widget>[
            IconButton(
              onPressed: () {
                setState(() {
                  _tabState = 1;
                });
              },
              icon: Icon(Icons.view_carousel,
                  size: 40,
                  color: (_tabState == 1)
                      ? Color.fromRGBO(147, 172, 243, 1)
                      : null),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _tabState = 0;
                });
              },
              icon: Icon(Icons.view_list,
                  size: 40,
                  color: (_tabState == 0)
                      ? Color.fromRGBO(147, 172, 243, 1)
                      : null),
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
