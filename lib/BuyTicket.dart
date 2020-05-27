import 'package:flutter/material.dart';
import 'Cinema.dart';
import 'Movie.dart';
import 'package:flutter/cupertino.dart';
import 'package:cineticketfinal/TicketCategory.dart';
import 'Ticket.dart';
import 'MovieRepo.dart';

class BuyTickets extends StatefulWidget {
  Movie _movie;

  BuyTickets(Movie m) {
    this._movie = m;
  }

  @override
  State<StatefulWidget> createState() {
    return _BuyTickets(_movie);
  }
}

List<String> weekDays = [
  "Monday",
  "Tuesday",
  "Wednesday",
  "Thursday",
  "Friday",
  "Saturday",
  "Sunday"
];

int startingDay = 20;

var cinemas = MovieRepo.loadCinemas();
var formatos = ["2D Subtitled", "2D Dubbed", "IMAX Subtitled", "3D Subtitled"];

class _BuyTickets extends State<BuyTickets> {
  Movie movie;
  Ticket t;
  int _selectedDate = 0;
  int _selectedTime;
  String cinemaIndex;
  String format;
  bool isButtonDisabled = true;

  _BuyTickets(Movie _movie) {
    this.movie = _movie;
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 25, left: 10, bottom: 10),
                  child: Text(
                    "Day",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: screenHeight / 5,
                  width: screenWidth,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedDate = index;
                            });
                          },
                          child: Container(
                            width: screenWidth / 4,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            padding: EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: (_selectedDate == index)
                                    ? Color.fromRGBO(147, 172, 243, 1)
                                    : null,
                                border:
                                    Border.all(color: Colors.black, width: 1)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  weekDays[(5 + index) % 7],
                                ),
                                Text(
                                  (20 + index).toString(),
                                  style: TextStyle(fontSize: 45),
                                ),
                                Text(
                                  "Jun",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, left: 10, bottom: 10),
                  child: Text(
                    "Cinema",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: screenWidth,
                  child: DropdownButtonFormField(
                    value: cinemaIndex,
                    hint: Text("Select cinema"),
                    items: cinemas.map((Cinema value) {
                      return new DropdownMenuItem<String>(
                        value: value.getName(),
                        child: new Text(value.getName()),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        cinemaIndex = value;
                        if (format != null && _selectedTime != null) {
                          isButtonDisabled = false;
                        }
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, left: 10, bottom: 10),
                  child: Text(
                    "Format",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: screenWidth,
                  child: DropdownButtonFormField(
                    hint: Text("Select Format"),
                    items: formatos.map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        format = value;
                        if (cinemaIndex != null && _selectedTime != null) {
                          isButtonDisabled = false;
                        }
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, left: 10, bottom: 10),
                  child: Text(
                    "Time",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: screenHeight / 15,
                  width: screenWidth,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedTime = index;
                              if (cinemaIndex != null && format != null) {
                                isButtonDisabled = false;
                              }
                            });
                          },
                          child: Container(
                            width: screenWidth / 4,
                            alignment: Alignment.center,
                            child: Text(
                              (12 + index * 2).toString() +
                                  ":" +
                                  (15 + index * 5).toString() +
                                  "h",
                              style: TextStyle(fontSize: 18),
                            ),
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            padding: EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: (_selectedTime == index)
                                    ? Color.fromRGBO(147, 172, 243, 1)
                                    : null,
                                border:
                                    Border.all(color: Colors.black, width: 1)),
                          ),
                        );
                      }),
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
              if (isButtonDisabled) {
                return null;
              } else {
                setState(() {
                  String date = (_selectedDate + 20).toString() + "/06/2020";
                  String time = (12 + _selectedTime * 2).toString() +
                      ":" +
                      (15 + _selectedTime * 5).toString();
                  String addr = MovieRepo.addressFromName(cinemaIndex);

                  t = new Ticket(movie.getId(), date, time, cinemaIndex, addr,
                      null, null, format);

                  Navigator.push(
                      context,
                      PageRouteBuilder(
                          pageBuilder: (_, a1, a2) => TicketCategory(t)));
                });
              }
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
