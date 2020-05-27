import 'package:cineticketfinal/Pay.dart';
import 'package:cineticketfinal/Ticket.dart';
import 'package:flutter/material.dart';
import 'package:cineticketfinal/MovieRepo.dart';
import 'package:flutter/cupertino.dart';

class Seats extends StatefulWidget {
  Ticket t;
  Seats(Ticket ticket) {
    this.t = ticket;
  }

  @override
  State<StatefulWidget> createState() {
    return _Seats(this.t);
  }
}

List<int> seatChart;
List<String> alfa = ["A", "B", "C", "D", "E", "F", "G", "H", "I"];

class _Seats extends State<Seats> {
  int placed = 0;
  List<String> selected = [];

  Ticket ticket;
  bool isButtonDisabled = true;

  _Seats(Ticket t) {
    this.ticket = t;
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    seatChart = MovieRepo.getSeatCart();

    int total = ticket.getNormal() +
        ticket.getChild() +
        ticket.getSenior() +
        (2 * ticket.getTwofer());

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
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        "Choose Seats",
                        style: TextStyle(fontSize: 20),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: screenWidth / 4.2),
                      ),
                      Text("Free"),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 12,
                        width: 12,
                        color: Color.fromRGBO(147, 172, 243, 1),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text("Remaining seats to choose: " +
                          (total - placed).toString()),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: screenWidth / 7.9),
                      ),
                      Text("Occupied"),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 12,
                        width: 12,
                        color: Colors.red,
                      ),
                    ],
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      height: screenHeight / 1.8,
                      child: GridView.builder(
                          itemCount: seatChart.length,
                          scrollDirection: Axis.horizontal,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 10),
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  if ((total) > placed) {
                                    placed++;
                                    if (seatChart[index] == 0) {
                                      seatChart[index] = 1;
                                      String c =
                                          alfa.reversed.toList()[index % 10];
                                      String nr =
                                          (index % seatChart.length ~/ 10)
                                              .toString();

                                      selected.add(nr + c);
                                    }
                                  }

                                  if (total == placed) {
                                    isButtonDisabled = false;
                                  } else {
                                    isButtonDisabled = true;
                                  }
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                color: (seatChart[index] != null)
                                    ? (seatChart[index] == 0)
                                        ? Color.fromRGBO(147, 172, 243, 1)
                                        : (seatChart[index] >= 0)
                                            ? Colors.red
                                            : Colors.transparent
                                    : Colors.transparent,
                                margin: EdgeInsets.all(5),
                                child: Text((seatChart[index] != null &&
                                        seatChart[index] <= -1)
                                    ? (seatChart[index] == -2)
                                        ? ((index % seatChart.length ~/ 10))
                                            .toString()
                                        : alfa.reversed.toList()[index % 10]
                                    : ""),
                              ),
                            );
                          })),

                  //SCREEN
                  Container(
                    width: screenHeight,
                    height: 50,
                    color: Color.fromRGBO(147, 172, 243, 1),
                    alignment: Alignment.center,
                    child: Text("Screen"),
                  ),
                ],
              ),
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
                  Icons.lens,
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
                if (isButtonDisabled) return null;
                ticket.setSeat(selected);
                Navigator.push(context,
                    PageRouteBuilder(pageBuilder: (_, a1, a2) => Pay(ticket)));
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
