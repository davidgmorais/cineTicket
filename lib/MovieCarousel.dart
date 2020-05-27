import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Movie.dart';
import 'MovieRepo.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'MovieDetails.dart';

class MovieCarousel extends StatefulWidget {
  List<Movie> movies;
  MovieCarousel(List<Movie> movies) {
    this.movies = movies;
  }

  @override
  State<StatefulWidget> createState() {
    return _carousel(this.movies);
  }
}

List<Movie> movieList = MovieRepo.LoadAll();

class _carousel extends State<MovieCarousel> {
  List<Movie> movieList;
  _carousel(List<Movie> movies) {
    this.movieList = movies;
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      child: CarouselSlider(
        enlargeCenterPage: true,
        height: screenHeight / 1.3,
        items: movieList.map((movie) {
          return Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                onTap: () {
                  navigateTo(movie);
                },
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Image.network(
                          movie.getPoster(),
                          fit: BoxFit.cover,
                        ),
                        margin: EdgeInsets.symmetric(vertical: 20),
                        color: Colors.pinkAccent,
                        width: screenWidth / 1.4,
                      ),
                      Expanded(
                          child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          movie.getName().length > 40
                              ? movie.getName().substring(0, 40) + "..."
                              : movie.getName(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      )),
                      Expanded(
                        child: Align(
                          alignment: Alignment(0, -0.5),
                          child: Text(
                            movie.getFirstGenre() +
                                "    -    " +
                                movie.getTime().toString() +
                                "min",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  //color: Colors.cyan,
                ),
              );
            },
          );
        }).toList(),
      ),
      height: screenHeight,
      width: screenWidth,
    );
  }

  void navigateTo(Movie movie) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MovieDetails(movie),
        ));
  }
}
