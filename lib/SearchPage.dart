import 'package:cineticketfinal/Movie.dart';
import 'package:cineticketfinal/MovieRepo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cineticketfinal/Cinema.dart';

import 'MovieDetails.dart';

class SearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SearchPage();
  }
}

class _SearchPage extends State<SearchPage> {
  List<Cinema> cinemas = [];
  List<Movie> movieList = [];
  bool searchString = false;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: CupertinoNavigationBar(
        transitionBetweenRoutes: false,
        middle: Text("Search"),
      ),
      body: Container(
        width: screenWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: screenWidth / 1.2,
              child: TextField(
                onSubmitted: (str) {
                  setState(() {
                    if (str != "") {
                      searchString = true;
                      cinemas = MovieRepo.searchCinema(str);
                      movieList = MovieRepo.searchMovie(str);
                    } else {
                      searchString = false;
                      cinemas = [];
                      movieList = [];
                    }
                  });
                },
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search for cinema or movie title'),
              ),
            ),
            Expanded(
              child: Container(
                height: screenHeight / 1.25,
                child: ListView(
                  children: <Widget>[
                    (cinemas.length != 0)
                        ? Container(
                            padding:
                                EdgeInsets.only(left: 20, right: 20, top: 20),
                            child: Text(
                              "Cinemas",
                              style: TextStyle(fontSize: 25),
                            ),
                          )
                        : (searchString)
                            ? Container(
                                padding: EdgeInsets.only(
                                    left: 20, right: 20, top: 20),
                                child: Text(
                                  "Cinemas",
                                  style: TextStyle(fontSize: 25),
                                ),
                              )
                            : Container(),
                    Container(
                      height: screenHeight / 6,
                      child: (cinemas.length == 0 && searchString)
                          ? Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              alignment: Alignment.topLeft,
                              child: Text("No results were found"),
                            )
                          : ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: cinemas.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  decoration: new BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://us.123rf.com/450wm/michelangelus/michelangelus0903/michelangelus090300039/4409249-3d-picture-of-blue-cinema-seats.jpg?ver=6"),
                                        fit: BoxFit.cover),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(
                                            3, 3), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius: new BorderRadius.all(
                                      Radius.circular(10.0),
                                    ),
                                    color: Colors.blueGrey,
                                  ),
                                  width: screenWidth / 2,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 10),
                                  child: Center(
                                    child: Text(
                                      cinemas[index].getName(),
                                      softWrap: true,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                );
                              }),
                    ),
                    (movieList.length != 0)
                        ? Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 2),
                            child: Text(
                              "Movies",
                              style: TextStyle(fontSize: 25),
                            ),
                          )
                        : (searchString)
                            ? Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 2),
                                child: Text(
                                  "Movies",
                                  style: TextStyle(fontSize: 25),
                                ),
                              )
                            : Container(),
                    Container(
                      height: screenHeight / 1.82,
                      child: (movieList.length == 0 && searchString)
                          ? Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              alignment: Alignment.topLeft,
                              child: Text("No results were found"),
                            )
                          : ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: movieList.length,
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                  behavior: HitTestBehavior.translucent,
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MovieDetails(
                                                movieList[index])));
                                  },
                                  child: Container(
                                    height: screenHeight / 4,
                                    margin: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 20),
                                    //color: Colors.pinkAccent,
                                    padding: EdgeInsets.symmetric(vertical: 2),
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          width: screenWidth / 3.2,
                                          child: Image.network(
                                            movieList[index].getPoster(),
                                            fit: BoxFit.cover,
                                            loadingBuilder:
                                                (BuildContext context,
                                                    Widget child,
                                                    ImageChunkEvent
                                                        loadingProgress) {
                                              if (loadingProgress == null)
                                                return child;
                                              return Center(
                                                child:
                                                    CircularProgressIndicator(),
                                              );
                                            },
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 20),
                                          width: screenWidth / 1.87,
                                          height: screenHeight / 4,
                                          padding: EdgeInsets.symmetric(
                                              vertical: 20),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                //title
                                                movieList[index]
                                                            .getName()
                                                            .length <=
                                                        19
                                                    ? movieList[index].getName()
                                                    : movieList[index]
                                                            .getName()
                                                            .substring(0, 19) +
                                                        "...",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 2.5),
                                              ),
                                              Text(
                                                //genre + Time
                                                movieList[index]
                                                        .getFirstGenre() +
                                                    " - " +
                                                    movieList[index]
                                                        .getTime()
                                                        .toString() +
                                                    "min",
                                                style: TextStyle(fontSize: 16),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 4),
                                              ),
                                              Text(
                                                (movieList[index]
                                                            .getSummaryLength() <=
                                                        140)
                                                    ? movieList[index]
                                                        .getSummary()
                                                    : (movieList[index]
                                                            .getSummary()
                                                            .substring(0, 140) +
                                                        "..."),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
