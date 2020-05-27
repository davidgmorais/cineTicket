import 'package:cineticketfinal/AddReview.dart';
import 'package:cineticketfinal/BuyTicket.dart';
import 'package:cineticketfinal/Movie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cineticketfinal/ReviewPage.dart';
import 'package:cineticketfinal/MovieRepo.dart';
import 'AddReview.dart';

class MovieDetails extends StatefulWidget {
  Movie _movie;

  MovieDetails(Movie m) {
    this._movie = m;
  }

  @override
  State<StatefulWidget> createState() {
    return _MovieDetails(_movie);
  }
}

Color selected = Color.fromRGBO(147, 172, 243, 1);

class _MovieDetails extends State<MovieDetails> {
  Movie movie;
  _MovieDetails(Movie _movie) {
    this.movie = _movie;
  }

  List<Widget> lista = [];
  int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    lista.add(CastTable(movie.getCast()));
    lista.add(CrewTable(movie.getCrew()));
    lista.add(StudioTable(movie.getStudio()));
    lista.add(GenreTable(movie.getGenres()));

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CupertinoNavigationBar(
        transitionBetweenRoutes: false,
        backgroundColor: Colors.transparent,
        trailing: GestureDetector(
          onTap: () {
            _settingModalBottomSheet(context);
          },
          child: Icon(
            Icons.share,
            color: Colors.lightBlue,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: screenWidth,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: screenHeight / 3.5,
                    child: Image.network(
                      movie.getBack(),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: screenWidth / 1.8,
                    margin: EdgeInsets.only(
                        top: (screenHeight / 3.2), left: screenHeight / 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          movie.getYear().toString() +
                              " - " +
                              movie.getDirector(),
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          movie.getName(),
                          style: TextStyle(fontSize: 20),
                        ),
                        Row(
                          children: <Widget>[
                            RaisedButton(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              onPressed: () {
                                print("Trailler url");
                              },
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.play_arrow),
                                  Text("Trailler")
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                            ),
                            Text(movie.getTime().toString() + " min"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: screenHeight / 4.9, left: screenWidth / 1.6),
                    height: screenHeight / 4,
                    width: screenWidth / 3,
                    child: Image.network(
                      movie.getPoster(),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: screenHeight / 40, vertical: 15),
              child: Text(
                movie.getSummary(),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(MovieRepo.getTicketQuant(movie).toString() + " ticket(s)"),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                ),
                Text(movie.getPg())
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
            ),
            RaisedButton(
              child: Text(
                "Buy tickets",
                style: TextStyle(fontSize: 15),
              ),
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => BuyTickets(movie)));
              },
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
            ),
            Container(
              height: screenHeight / 6.5,
              child: Row(
                children: <Widget>[
                  Container(
                    child:
                        Graph(movie.reviewsCount(), screenWidth, screenHeight),
                    //color: Colors.pinkAccent,
                    width: screenWidth / 1.4,
                  ),
                  Container(
                    width: screenWidth / 3.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          (movie.getPop() / 20).toString().substring(0, 3),
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              size: 20,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(2),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ReviewPage(movie)));
                  },
                  child: Text("Reviews"),
                  padding: EdgeInsets.symmetric(horizontal: 50),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddReview(movie)));
                  },
                  child: Text("Add a review"),
                  padding: EdgeInsets.symmetric(horizontal: 40),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(8),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  color: (_tabIndex == 0)
                      ? Color.fromRGBO(147, 172, 243, 1)
                      : Colors.white70,
                  child: Text(
                    "Cast",
                  ),
                  onPressed: () {
                    setState(() {
                      _tabIndex = 0;
                    });
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                ),
                RaisedButton(
                  color: (_tabIndex == 1) ? selected : Colors.white70,
                  child: Text(
                    "Crew",
                  ),
                  onPressed: () {
                    setState(() {
                      _tabIndex = 1;
                    });
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                ),
                RaisedButton(
                  color: (_tabIndex == 2) ? selected : Colors.white70,
                  child: Text(
                    "Studio",
                  ),
                  onPressed: () {
                    setState(() {
                      _tabIndex = 2;
                    });
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                ),
                RaisedButton(
                  color: (_tabIndex == 3) ? selected : Colors.white70,
                  child: Text(
                    "Genres",
                  ),
                  onPressed: () {
                    setState(() {
                      _tabIndex = 3;
                    });
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                  ),
                ),
              ],
            ),
            Container(
              height: screenHeight / 2.8,
              child: lista[_tabIndex],
            ),
          ],
        ),
      ),
    );
  }
}

void _settingModalBottomSheet(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          child: new Wrap(
            children: <Widget>[
              Container(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      height: 120,
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            height: 70,
                            child: Image.network(
                                "https://lh3.googleusercontent.com/Mey6KP57RsOKDdvUfcEPDHhT-I8GBYM41trasLfpueg4lQb88r8PCZR00ZceMZGmlIo",
                                fit: BoxFit.contain),
                          ),
                          Text("Messages")
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 65,
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                            child: Image.network(
                                "https://cdn4.iconfinder.com/data/icons/social-media-icons-the-circle-set/48/twitter_circle-512.png",
                                fit: BoxFit.contain),
                          ),
                          Text("Twiter"),
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 8),
                            height: 65,
                            child: Image.network(
                                "https://cdn3.iconfinder.com/data/icons/popular-services-brands/512/whatsapp-512.png",
                                fit: BoxFit.contain),
                          ),
                          Text("Messages")
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 8),
                            height: 65,
                            child: Image.network(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Circle-icons-mail.svg/1024px-Circle-icons-mail.svg.png",
                                fit: BoxFit.contain),
                          ),
                          Text("Email")
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            height: 75,
                            child: Image.network(
                                "https://cdn.icon-icons.com/icons2/642/PNG/512/facebook_icon-icons.com_59205.png",
                                fit: BoxFit.contain),
                          ),
                          Text("Facebook")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              new ListTile(
                title: new Text("Copy link"),
                trailing: Icon(Icons.content_copy),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              new ListTile(
                onTap: () {
                  Navigator.pop(context);
                },
                title: new Text("Cancel"),
                trailing: Icon(Icons.cancel),
              ),
            ],
          ),
        );
      });
}

Graph(List<int> reviewsCount, maxWidth, maxHeight) {
  maxHeight = maxHeight / 6;
  int max =
      reviewsCount.reduce((curr, next) => curr > next ? curr : next); // Max
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: <Widget>[
      for (int i in reviewsCount)
        Container(
          height: i * maxHeight / max + 2,
          width: maxWidth / 15,
          decoration: BoxDecoration(
            color: selected,
            border: Border.all(color: Colors.white, width: 0.50),
          ),
        )
    ],
  );
}

Widget GenreTable(List<String> genres) {
  return ListView.builder(
    padding: EdgeInsets.only(top: 0),
    itemCount: genres.length,
    itemBuilder: (BuildContext context, int index) {
      return ListTile(
        title: Text(genres[index]),
      );
    },
  );
}

Widget StudioTable(List<String> studio) {
  return ListView.builder(
    padding: EdgeInsets.only(top: 0),
    itemCount: studio.length,
    itemBuilder: (BuildContext context, int index) {
      return ListTile(
        title: Text(studio[index]),
      );
    },
  );
}

CastTable(List<String> cast) {
  return ListView.builder(
    padding: EdgeInsets.only(top: 0),
    itemCount: cast.length,
    itemBuilder: (BuildContext context, int index) {
      return ListTile(
        title: Text(cast[index].split(",")[0]),
        trailing: Text(
          cast[index].split(",")[1],
          style: TextStyle(color: Colors.grey),
        ),
      );
    },
  );
}

CrewTable(List<String> crew) {
  return ListView.builder(
    padding: EdgeInsets.only(top: 0),
    itemCount: crew.length,
    itemBuilder: (BuildContext context, int index) {
      return ListTile(
        title: Text(crew[index].split(",")[0]),
        trailing: Text(
          crew[index].split(",")[1],
          style: TextStyle(color: Colors.grey),
        ),
      );
    },
  );
}
