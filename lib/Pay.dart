import 'package:cineticketfinal/Complete.dart';
import 'package:cineticketfinal/MovieRepo.dart';
import 'package:cineticketfinal/Ticket.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pay extends StatefulWidget {
  Ticket t;
  Pay(Ticket ticket) {
    this.t = ticket;
  }

  @override
  State<StatefulWidget> createState() {
    return _Pay(this.t);
  }
}

int _selected = 0;

class _Pay extends State<Pay> {
  Ticket ticket;
  _Pay(Ticket t) {
    this.ticket = t;
  }

  int normal = 0, child = 0, senior = 0, twofer = 0;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    normal = ticket.getNormal();
    child = ticket.getChild();
    senior = ticket.getSenior();
    twofer = ticket.getTwofer();

    return Scaffold(
      appBar: CupertinoNavigationBar(
        transitionBetweenRoutes: false,
        middle: Text("Buy Ticket"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: screenWidth,
            height: screenHeight / 1.6,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 30),
                  height: screenWidth / 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        child: Icon(
                          Icons.payment,
                          color: (_selected == 0)
                              ? Color.fromRGBO(147, 172, 243, 1)
                              : null,
                          size: 50,
                        ),
                        onTap: () {
                          print(_selected);
                          setState(() {
                            _selected = 0;
                          });
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selected = 1;
                          });
                        },
                        child: Icon(
                          Icons.card_giftcard,
                          color: (_selected == 1)
                              ? Color.fromRGBO(147, 172, 243, 1)
                              : null,
                          size: 50,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selected = 2;
                          });
                        },
                        child: Icon(
                          Icons.account_balance,
                          color: (_selected == 2)
                              ? Color.fromRGBO(147, 172, 243, 1)
                              : null,
                          size: 50,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selected = 3;
                          });
                        },
                        child: Icon(
                          Icons.atm,
                          color: (_selected == 3)
                              ? Color.fromRGBO(147, 172, 243, 1)
                              : null,
                          size: 50,
                        ),
                      ),
                    ],
                  ),
                ),
                (normal != 0)
                    ? Container(
                        height: screenHeight / 15,
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                          border: Border.symmetric(
                            vertical:
                                BorderSide(color: Colors.black, width: 0.5),
                          ),
                        ),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Normal",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "  x" + this.normal.toString(),
                              style: TextStyle(fontSize: 15),
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            Container(
                              child: Text(
                                "€" + (7.20 * normal).toStringAsFixed(2),
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(),
                (child != 0)
                    ? Container(
                        height: screenHeight / 15,
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                          border: Border.symmetric(
                            vertical:
                                BorderSide(color: Colors.black, width: 0.5),
                          ),
                        ),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Child",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "  x" + child.toString(),
                              style: TextStyle(fontSize: 15),
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            Container(
                              child: Text(
                                "€" + (3.90 * child).toStringAsFixed(2),
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(),
                (senior != 0)
                    ? Container(
                        height: screenHeight / 15,
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                          border: Border.symmetric(
                            vertical:
                                BorderSide(color: Colors.black, width: 0.5),
                          ),
                        ),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Senior",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "  x" + senior.toString(),
                              style: TextStyle(fontSize: 15),
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            Container(
                              child: Text(
                                "€" + (5.50 * senior).toStringAsFixed(2),
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(),
                (twofer != 0)
                    ? Container(
                        height: screenHeight / 15,
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                          border: Border.symmetric(
                            vertical:
                                BorderSide(color: Colors.black, width: 0.5),
                          ),
                        ),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Two for One",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "  x" + twofer.toString(),
                              style: TextStyle(fontSize: 15),
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            Container(
                              child: Text(
                                "€" + (7.20 * twofer).toStringAsFixed(2),
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0, left: 50.0, right: 50.0),
            height: 1,
            color: Colors.black,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
            alignment: Alignment.centerRight,
            child: Text(
              "€" +
                  (normal * 7.20 + senior * 5.50 + child * 3.90 + twofer * 7.20)
                      .toStringAsFixed(2),
              //(0.0 * 7.20 + 0.0 * 3.90 + senior * 5.50 + twofer * 7.20)
              //   .toString(),
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.panorama_fish_eye,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                ),
                Icon(
                  Icons.panorama_fish_eye,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                ),
                Icon(
                  Icons.panorama_fish_eye,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                ),
                Icon(
                  Icons.lens,
                ),
              ],
            ),
          ),
          RaisedButton(
            onPressed: () {
              setState(() {
                MovieRepo.addTicket(ticket);

                Navigator.push(context,
                    PageRouteBuilder(pageBuilder: (_, a1, a2) => Complete()));
              });
            },
            child: Text(
              "Done",
              style: TextStyle(fontSize: 15),
            ),
            color: Color.fromRGBO(147, 172, 243, 1),
            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
          ),
        ],
      ),
    );
  }
}
