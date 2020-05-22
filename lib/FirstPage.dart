import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'Movie.dart';
import 'Cinema.dart';
import 'MovieRepo.dart';
import 'MovieDetails.dart';

List<Cinema> nearYou = [
  new Cinema("NOS cinemas", "Palacio do gelo"),
  new Cinema("Teatro Viriato", "rua das bocas, Viseu"),
];

List<Movie> forYou = MovieRepo.LoadForYou();
List<Movie> movieList = MovieRepo.loadTrending();

class FirstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirstPage();
  }
}

class _FirstPage extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    // TODO: implement build
    return CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          largeTitle: Text(
            "What to watch",
            textAlign: TextAlign.start,
          ),
          trailing: Container(
            margin: EdgeInsets.symmetric(
                vertical: screenHeight / 20, horizontal: 10),
            child: Icon(Icons.search),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment(-0.89, 0),
                child: Text(
                  "Trending",
                  softWrap: true,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
              ),
              CarouselSlider(
                autoPlay: true,
                enlargeCenterPage: true,
                autoPlayInterval: Duration(seconds: 8),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                height: screenHeight / 4.5,
                items: movieList.map((movie) {
                  return Builder(
                    builder: (BuildContext context) {
                      return GestureDetector(
                        onTap: () {
                          navigateTo(movie);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                color: Colors.black87,
                              ),
                              ShaderMask(
                                shaderCallback: (rect) {
                                  return LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [Colors.black, Colors.transparent],
                                  ).createShader(Rect.fromLTRB(
                                      10, 0, rect.width, rect.height));
                                },
                                blendMode: BlendMode.dstIn,
                                child: Image.network(
                                  movie.getBack(),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                alignment: Alignment(0.0, 0.8),
                                child: Text(
                                  movie.getName(),
                                  softWrap: true,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Align(
                  alignment: Alignment(-0.89, 0.0),
                  child: Text(
                    "For you",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Container(
                height: screenHeight / 5,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: forYou.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        navigateTo(forYou[index]);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(3, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        width: screenWidth / 4,
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Image.network(
                          forYou[index].getPoster(),
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
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Align(
                  alignment: Alignment(-0.89, 0.0),
                  child: Text(
                    "Near you",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Container(
                height: screenHeight / 10,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: nearYou.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: new BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://us.123rf.com/450wm/michelangelus/michelangelus0903/michelangelus090300039/4409249-3d-picture-of-blue-cinema-seats.jpg?ver=6"),
                            fit: BoxFit.cover),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(3, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: new BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        color: Colors.blueGrey,
                      ),
                      width: screenWidth / 2,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Center(
                        child: Text(
                          nearYou[index].getName(),
                          softWrap: true,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  void navigateTo(Movie movie) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MovieDetails(movie)));
  }
}
