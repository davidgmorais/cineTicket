import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'MovieRepo.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'Ticket.dart';

class ThirdPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ThirdPage();
  }
}

List<Ticket> ticketsList = MovieRepo.LoadTickets();
int _stateFront = 0;

class _ThirdPage extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: CupertinoNavigationBar(
        transitionBetweenRoutes: false,
        leading: GestureDetector(
          child: Icon(Icons.tune),
          onTap: () {},
        ),
        middle: Text("Tickets"),
        trailing: Icon(Icons.help_outline),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
          ),
          Center(
            child: Text("Tap on ticket to see more"),
          ),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          Container(
            child: CarouselSlider(
                enlargeCenterPage: true,
                height: screenHeight / 1.4,
                items: ticketsList.map((ticket) {
                  return Builder(builder: (BuildContext context) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (_stateFront == 0)
                            _stateFront = 1;
                          else
                            _stateFront = 0;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [0, 0.6],
                              colors: [ticket.getColor(), Colors.white]),
                          border: Border.all(width: 1.0, color: Colors.black38),
                          //color: Colors.pinkAccent,
                        ),
                        width: screenWidth,
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: Column(
                          children: <Widget>[
                            (_stateFront == 0)
                                ? Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 30, vertical: 25),
                                    child: Image.network(
                                      ticket.getMoviePoster(),
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                : Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 35),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Container(
                                              child: Image.network(
                                                ticket.getMoviePoster(),
                                                fit: BoxFit.cover,
                                              ),
                                              height: screenHeight / 4,
                                            ),
                                            Container(
                                              width: screenWidth / 4.5,
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 20),
                                              child: Column(
                                                children: <Widget>[
                                                  Text(
                                                    "Cinema\n" +
                                                        ticket.getCinema() +
                                                        ", " +
                                                        ticket.getAddres() +
                                                        "\n\nDate\n" +
                                                        ticket.getDate() +
                                                        "\n\nTime\n" +
                                                        ticket.getTime(),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(15),
                                        ),
                                        Center(
                                          child: Text(
                                            "Seats: " + ticket.getSeats(),
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(5),
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              "Room: " + ticket.getRoom(),
                                              style: TextStyle(fontSize: 16),
                                              textAlign: TextAlign.start,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 20),
                                            ),
                                            Text(
                                              "Format: " + ticket.getFormat(),
                                              style: TextStyle(fontSize: 16),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(5),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          height: screenHeight / 22,
                                          child: Text(
                                            ((ticket.getNormal() > 0)
                                                    ? "Normal (x" +
                                                        ticket
                                                            .getNormal()
                                                            .toString() +
                                                        "), "
                                                    : "") +
                                                ((ticket.getChild() > 0)
                                                    ? "Child (x" +
                                                        ticket
                                                            .getChild()
                                                            .toString() +
                                                        "), "
                                                    : "") +
                                                ((ticket.getSenior() > 0)
                                                    ? "Senior (x" +
                                                        ticket
                                                            .getSenior()
                                                            .toString() +
                                                        "), "
                                                    : "") +
                                                ((ticket.getTwofer() > 0)
                                                    ? "Two for One (x" +
                                                        ticket
                                                            .getTwofer()
                                                            .toString() +
                                                        ")"
                                                    : ""),
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                            Expanded(
                              child: Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR1Cc9Xlw2iORzytMrSPRmDQLY-SeVbxGdF62IXZ2C7x330qIMq&usqp=CAU"),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8),
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: ticket.getColor(),

                                  /*border: Border(
                                      top: BorderSide(
                                          color: Colors.black, width: 1.0)),*/
                                ),
                                child: (_stateFront == 0)
                                    ? Center(
                                        child: Text(
                                          ticket.getTime() +
                                              "  -  " +
                                              ticket.getDate().substring(0, 5) +
                                              "\n" +
                                              ticket.getCinema(),
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      )
                                    : Container(),
                                width: screenWidth,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  });
                }).toList()),
          ),
        ],
      ),
    );
  }
}
