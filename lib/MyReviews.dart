import 'package:cineticketfinal/MovieRepo.dart';
import 'package:cineticketfinal/Review.dart';
import 'package:cineticketfinal/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyReviews extends StatefulWidget {
  String _un;

  MyReviews(String username) {
    this._un = username;
  }

  @override
  State<StatefulWidget> createState() {
    return _myReviews(_un);
  }
}

class _myReviews extends State<MyReviews> {
  String username;

  _myReviews(String un) {
    this.username = un;
  }

  List<Review> reviewList = [];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    reviewList = MovieRepo.getReviewsFrom(username);

    return Scaffold(
      appBar: CupertinoNavigationBar(
        transitionBetweenRoutes: false,
        middle: Text("My Reviews"),
      ),
      body: (reviewList.length != 0)
          ? Container(
              height: screenHeight,
              child: ListView.builder(
                itemCount: reviewList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.black),
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
                                  for (int i = 0;
                                      i < reviewList[index].getRating().toInt();
                                      i++)
                                    Icon(Icons.star),
                                  if ((reviewList[index].getRating() / 0.5) %
                                          2 !=
                                      0)
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
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "You have not posted any reviews yet.\nWhen you do, they will appear here",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 40),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage(1)));
                      },
                      color: Color.fromRGBO(147, 172, 243, 1),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Text(
                        "Write one now!",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
