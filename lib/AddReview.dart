import 'package:cineticketfinal/Review.dart';
import 'package:flutter/material.dart';
import 'Movie.dart';
import 'package:flutter/cupertino.dart';
import 'MovieRepo.dart';

class AddReview extends StatefulWidget {
  Movie _movie;

  AddReview(Movie m) {
    this._movie = m;
  }

  @override
  State<StatefulWidget> createState() {
    return _AddReview(_movie);
  }
}

class _AddReview extends State<AddReview> {
  Movie movie;

  _AddReview(Movie _movie) {
    this.movie = _movie;
  }

  String reviewText = "";
  int rate = 0;
  bool spoilers = false;
  TextEditingController reviewController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CupertinoNavigationBar(
        transitionBetweenRoutes: false,
        middle: Text("Add a review"),
        trailing: GestureDetector(
          onTap: () {
            reviewText = reviewController.text;
            saveReview(movie);
          },
          child: Icon(Icons.save),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: screenWidth,
            height: screenHeight / 6,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black54, width: 0.5),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Image.network(
                    movie.getPoster(),
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      (movie.getName().length < 25)
                          ? movie.getName()
                          : movie.getName().substring(0, 25) + "...",
                      style: TextStyle(fontSize: 22),
                    ),
                    Text(
                      movie.getYear().toString(),
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: screenWidth,
            height: screenHeight / 6,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black54, width: 0.5),
            ),
            child: Row(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: Text("Rating", style: TextStyle(fontSize: 16)),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (rate == 2) {
                                rate = 1;
                              } else if (rate == 1) {
                                rate = 0;
                              } else {
                                rate = 2;
                              }
                            });
                          },
                          child: Icon(
                            (rate >= 1)
                                ? (rate == 1 ? Icons.star_half : Icons.star)
                                : Icons.star_border,
                            size: 50,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (rate == 4) {
                                rate = 3;
                              } else if (rate == 3) {
                                rate = 2;
                              } else {
                                rate = 4;
                              }
                            });
                          },
                          child: Icon(
                            (rate >= 3)
                                ? (rate == 3 ? Icons.star_half : Icons.star)
                                : Icons.star_border,
                            size: 50,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (rate == 6) {
                                rate = 5;
                              } else if (rate == 5) {
                                rate = 4;
                              } else {
                                rate = 6;
                              }
                            });
                          },
                          child: Icon(
                            (rate >= 5)
                                ? (rate == 5 ? Icons.star_half : Icons.star)
                                : Icons.star_border,
                            size: 50,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (rate == 8) {
                                rate = 7;
                              } else if (rate == 7) {
                                rate = 8;
                              } else {
                                rate = 8;
                              }
                            });
                          },
                          child: Icon(
                            (rate >= 7)
                                ? (rate == 7 ? Icons.star_half : Icons.star)
                                : Icons.star_border,
                            size: 50,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (rate == 10) {
                                rate = 9;
                              } else if (rate == 9) {
                                rate = 10;
                              } else {
                                rate = 10;
                              }
                            });
                          },
                          child: Icon(
                            (rate >= 9)
                                ? (rate == 9 ? Icons.star_half : Icons.star)
                                : Icons.star_border,
                            size: 50,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      spoilers = !spoilers;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: Text("Contains\nSpoilers",
                            style: TextStyle(
                                fontSize: 14,
                                color: spoilers ? null : Colors.black45)),
                      ),
                      Icon(
                        spoilers ? Icons.visibility_off : Icons.visibility,
                        color: spoilers ? null : Colors.black12,
                        size: 50,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: screenWidth,
              height: screenHeight / 1.9,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: TextField(
                expands: true,
                controller: reviewController,
                minLines: null,
                maxLines: null,
                decoration: InputDecoration.collapsed(
                    hintText: "Tap to edit text", border: InputBorder.none),
              ),
            ),
          ),
        ],
      ),
    );
  }

  saveReview(Movie movie) {
    Movie m = MovieRepo.getMovie(movie.getId());
    Review r = new Review(reviewText, rate / 2.0, "Albino Anselmo", spoilers);
    m.addReview(r);
    Navigator.pop(context);
  }
}
