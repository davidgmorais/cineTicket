import 'package:cineticketfinal/MovieRepo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Movie.dart';
import 'MovieDetails.dart';
import 'Cinema.dart';

class CinemaList extends StatefulWidget {
  Cinema cinema;

  CinemaList(Cinema cinema) {
    this.cinema = cinema;
  }

  @override
  State<StatefulWidget> createState() {
    return _cinemaList(this.cinema);
  }
}

class _cinemaList extends State<CinemaList> {
  Cinema cinema;

  _cinemaList(Cinema cinema) {
    this.cinema = cinema;
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    List<Movie> movieList = MovieRepo.getCinemaMovies(cinema.getID());

    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text(cinema.getName()),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: movieList.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MovieDetails(movieList[index])));
              },
              child: Container(
                height: screenHeight / 4,
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                //color: Colors.pinkAccent,
                padding: EdgeInsets.symmetric(vertical: 2),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: screenWidth / 3.2,
                      child: Image.network(
                        movieList[index].getPoster(),
                        fit: BoxFit.cover,
                        loadingBuilder: (BuildContext context, Widget child,
                            ImageChunkEvent loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      width: screenWidth / 1.87,
                      height: screenHeight / 4,
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            //title
                            movieList[index].getName().length <= 19
                                ? movieList[index].getName()
                                : movieList[index].getName().substring(0, 19) +
                                    "...",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 2.5),
                          ),
                          Text(
                            //genre + Time
                            movieList[index].getFirstGenre() +
                                " - " +
                                movieList[index].getTime().toString() +
                                "min",
                            style: TextStyle(fontSize: 16),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 4),
                          ),
                          Text(
                            (movieList[index].getSummaryLength() <= 140)
                                ? movieList[index].getSummary()
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
          },
        ),
      ),
    );
  }
}
