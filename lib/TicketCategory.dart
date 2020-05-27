import 'package:cineticketfinal/Seats.dart';
import 'package:cineticketfinal/Ticket.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TicketCategory extends StatefulWidget {
  Ticket ticket;
  TicketCategory(Ticket t) {
    this.ticket = t;
  }

  @override
  State<StatefulWidget> createState() {
    return _TicketCategory(this.ticket);
  }
}

class _TicketCategory extends State<TicketCategory> {
  Ticket ticket;
  int normal = 0;
  int child = 0;
  int senior = 0;
  int twofer = 0;
  bool isButtonDisabled = true;

  _TicketCategory(t) {
    this.ticket = t;
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: CupertinoNavigationBar(
        transitionBetweenRoutes: false,
        middle: Text("Buy Ticket"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: screenWidth,
            height: screenHeight / 1.38,
            child: Column(
              children: <Widget>[
                Container(
                  height: screenHeight / 9,
                  margin: EdgeInsets.only(top: 30),
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(
                    border: Border.symmetric(
                      vertical: BorderSide(color: Colors.black, width: 0.5),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Normal",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "€7.20",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 40,
                              child: RaisedButton(
                                onPressed: () {
                                  setState(
                                    () {
                                      if (normal > 0) normal--;
                                      if (normal != 0 ||
                                          child != 0 ||
                                          senior != 0 ||
                                          twofer != 0) {
                                        isButtonDisabled = false;
                                      } else {
                                        isButtonDisabled = true;
                                      }
                                    },
                                  );
                                },
                                child: Text("-"),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black, width: 1.0)),
                              width: 40,
                              height: 35,
                              alignment: Alignment.center,
                              child: Text(normal.toString()),
                            ),
                            Container(
                              width: 40,
                              child: RaisedButton(
                                child: Text("+"),
                                onPressed: () {
                                  setState(() {
                                    if (normal < 10) normal++;
                                    if (normal != 0 ||
                                        child != 0 ||
                                        senior != 0 ||
                                        twofer != 0) {
                                      isButtonDisabled = false;
                                    } else {
                                      isButtonDisabled = true;
                                    }
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: screenHeight / 9,
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(
                    border: Border.symmetric(
                      vertical: BorderSide(color: Colors.black, width: 0.5),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Child",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "€3.90",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 40,
                              child: RaisedButton(
                                onPressed: () {
                                  setState(
                                    () {
                                      if (child > 0) child--;
                                      if (normal != 0 ||
                                          child != 0 ||
                                          senior != 0 ||
                                          twofer != 0) {
                                        isButtonDisabled = false;
                                      } else {
                                        isButtonDisabled = true;
                                      }
                                    },
                                  );
                                },
                                child: Text("-"),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black, width: 1.0)),
                              width: 40,
                              height: 35,
                              alignment: Alignment.center,
                              child: Text(child.toString()),
                            ),
                            Container(
                              width: 40,
                              child: RaisedButton(
                                child: Text("+"),
                                onPressed: () {
                                  setState(() {
                                    if (child < 10) child++;
                                    if (normal != 0 ||
                                        child != 0 ||
                                        senior != 0 ||
                                        twofer != 0) {
                                      isButtonDisabled = false;
                                    } else {
                                      isButtonDisabled = true;
                                    }
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: screenHeight / 9,
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(
                    border: Border.symmetric(
                      vertical: BorderSide(color: Colors.black, width: 0.5),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Senior",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "€5.50",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 40,
                              child: RaisedButton(
                                onPressed: () {
                                  setState(
                                    () {
                                      if (senior > 0) senior--;
                                      if (normal != 0 ||
                                          child != 0 ||
                                          senior != 0 ||
                                          twofer != 0) {
                                        isButtonDisabled = false;
                                      } else {
                                        isButtonDisabled = true;
                                      }
                                    },
                                  );
                                },
                                child: Text("-"),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black, width: 1.0)),
                              width: 40,
                              height: 35,
                              alignment: Alignment.center,
                              child: Text(senior.toString()),
                            ),
                            Container(
                              width: 40,
                              child: RaisedButton(
                                child: Text("+"),
                                onPressed: () {
                                  setState(() {
                                    if (senior < 10) senior++;
                                    if (normal != 0 ||
                                        child != 0 ||
                                        senior != 0 ||
                                        twofer != 0) {
                                      isButtonDisabled = false;
                                    } else {
                                      isButtonDisabled = true;
                                    }
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: screenHeight / 9,
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(
                    border: Border.symmetric(
                      vertical: BorderSide(color: Colors.black, width: 0.5),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Two for One",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "€7.20",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 40,
                              child: RaisedButton(
                                onPressed: () {
                                  setState(
                                    () {
                                      if (twofer > 0) twofer--;
                                      if (normal != 0 ||
                                          child != 0 ||
                                          senior != 0 ||
                                          twofer != 0) {
                                        isButtonDisabled = false;
                                      } else {
                                        isButtonDisabled = true;
                                      }
                                    },
                                  );
                                },
                                child: Text("-"),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black, width: 1.0)),
                              width: 40,
                              height: 35,
                              alignment: Alignment.center,
                              child: Text(twofer.toString()),
                            ),
                            Container(
                              width: 40,
                              child: RaisedButton(
                                child: Text("+"),
                                onPressed: () {
                                  setState(() {
                                    if (twofer < 10) twofer++;
                                    if (normal != 0 ||
                                        child != 0 ||
                                        senior != 0 ||
                                        twofer != 0) {
                                      isButtonDisabled = false;
                                    } else {
                                      isButtonDisabled = true;
                                    }
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 130.0, left: 50.0, right: 50.0),
                  height: 1,
                  color: Colors.black,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                  alignment: Alignment.centerRight,
                  child: Text(
                    "€" +
                        (normal * 7.20 +
                                child * 3.90 +
                                senior * 5.50 +
                                twofer * 7.20)
                            .toStringAsFixed(2),
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
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
                  Icons.lens,
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
              ],
            ),
          ),
          RaisedButton(
            onPressed: () {
              setState(() {
                if (isButtonDisabled) {
                  return null;
                }

                ticket.addCategory("Normal", normal);
                ticket.addCategory("Child", child);
                ticket.addCategory("Senior", senior);
                ticket.addCategory("Twofer", twofer);

                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, a1, a2) => Seats(ticket)));
              });
            },
            child: Text(
              "Next",
              style: TextStyle(fontSize: 15),
            ),
            color: (isButtonDisabled) ? null : Color.fromRGBO(147, 172, 243, 1),
            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
          ),
        ],
      ),
    );
  }
}
