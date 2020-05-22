import 'package:cineticketfinal/Movie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cineticketfinal/Review.dart';

class ReviewPage extends StatefulWidget {
  Movie _movie;

  ReviewPage(Movie m) {
    this._movie = m;
  }

  @override
  State<StatefulWidget> createState() {
    return _reviewPage(_movie);
  }
}

class _reviewPage extends State<ReviewPage> {
  Movie movie;

  _reviewPage(Movie _movie) {
    this.movie = _movie;
  }

  List<Review> reviewList = [];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    reviewList = movie.getReviews();

    return Scaffold(
      appBar: CupertinoNavigationBar(
        transitionBetweenRoutes: false,
        middle: Text(movie.getName()),
      ),
      body: Container(
        height: screenHeight,
        child: ListView.builder(
          itemCount: reviewList.length,
          itemBuilder: (BuildContext context, int index) {
            Color c;
            c = (!reviewList[index].dosContainsSpoiler())
                ? Colors.transparent
                : Colors.grey;

            return Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1.0, color: Colors.black),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: screenWidth / 2.2,
                        padding: EdgeInsets.only(left: 10, top: 5),
                        child: Row(
                          children: <Widget>[
                            for (double i = 0;
                                i < reviewList[index].getRating();
                                i++)
                              Icon(Icons.star),
                            if ((reviewList[index].getRating() / 0.5) % 2 != 0)
                              Icon(Icons.star_half),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        width: screenWidth / 2,
                        child: Text(
                          reviewList[index].getUsername(),
                          style: TextStyle(fontSize: 13),
                          softWrap: true,
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(reviewList[index].getReview()),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
