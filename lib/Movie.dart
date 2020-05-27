import 'package:cineticketfinal/Review.dart';
import 'package:flutter/material.dart';

class Movie {
  static int idCount = 1;
  Movie(
      String s,
      double pop,
      String bg,
      String poster,
      String director,
      int year,
      List<String> genres,
      int time,
      String pg,
      String summary,
      Color color) {
    this.id = idCount++;
    this.name = s;
    this.popularity = pop;
    this.background = bg;
    this.poster = poster;
    this.director = director;
    this.year = year;
    this.genres = genres;
    this.time = time;
    this.pg = pg;
    this.summary = summary;
    this.color = color;
  }

  int id;
  String name;
  String director;
  int year;
  double popularity;
  String background;
  String poster;
  List<String> genres;
  int time;
  String pg;
  Color color;
  String summary;
  List<Review> reviews = [
    new Review(
        "What a crying shame that a movie that had so many people awaiting its arrival delivered so little. And, it seemed to take forever to deliver that!",
        2.0,
        "dagallop",
        false),
    new Review("Overrated!", 2.5, "uzuncan-36524", false),
    new Review(
        "A very pretty, funny movies and, as the youth calls it: 'mindlowing",
        1.5,
        "Marianita BL",
        false),
    new Review(
        "There isn't too much in the way of suspense or surprises when it comes to the story, but there are some shocking moments and funny lines",
        4.5,
        "MR_Heraclius",
        false),
    new Review("A masterpiece and an ode to great cinema", 5.0,
        "subxerogravity", false),
    new Review("Amazing plot", 5.0, "marta", true),
    new Review(
        "Tell me a movie that is more famous than this. Tell me a movie that has had more parodies spinned off its storyline than this. Tell me one movie that has been as quoted as a much as this. The answer is you can't.",
        5.0,
        "alexkolokotronis",
        false),
    new Review(
        "Potboiler at best ... confusing to say the least. This was just an opportunity for these actors to make a shed load of money without trying.",
        1.0,
        "gilliaothegreat",
        false),
  ];
  List<String> cast = [];
  List<String> crew = [];
  List<String> studio = [];

  Color getColor() {
    return this.color;
  }

  String getName() {
    return this.name;
  }

  String getFirstGenre() {
    if (this.genres == null || this.genres.length < 1) {
      return "Action";
    }
    return this.genres[0];
  }

  List<String> getGenres() {
    if (this.genres == null || this.genres.length < 1) {
      return ["Action", "Animation", "Terror"];
    }
    return this.genres;
  }

  int getId() {
    return this.id;
  }

  int getTime() {
    if (time != null && time != 0) {
      return this.time;
    }
    return 120;
  }

  int getSummaryLength() {
    if (this.summary != null) {
      return this.summary.length;
    }
    return "Movie plot.".length;
  }

  String getSummary() {
    if (this.summary != null) {
      return this.summary;
    }
    return "Movie plot.";
  }

  String getPoster() {
    if (this.poster != null) {
      return this.poster;
    } else {
      return "https://img.yts.mx/assets/images/movies/13_2010/background.jpg";
    }
  }

  String getBack() {
    if (this.background != null) {
      return this.background;
    } else {
      return "https://img.yts.mx/assets/images/movies/13_2010/background.jpg";
    }
  }

  double getPop() {
    return this.popularity;
  }

  String getDirector() {
    if (this.director == null) return "";
    return this.director;
  }

  int getYear() {
    if (this.year != null) return this.year;
    return 2019;
  }

  List<String> getCast() {
    if (this.cast.length > 0) return this.cast;
    return [
      "Margot Robie, Harley Queen",
      "Rosie Perez, Renee Montoya",
      "Mary Winstead, The Huntress",
      "Jurnee Smollett-Bell, Black Canary",
      "Ella Jay Basco, Cassandra Cain"
    ];
  }

  List<String> getCrew() {
    if (this.crew.length > 0) return this.cast;
    return [
      this.director + ", Director",
      "Christina Hodson, Writter",
      "Margot Robbie, Producer",
      "Bryan Unkeless, Producer",
      "Sue Kroll, Producer",
      "Daniel Pemberton, Music",
      "Matthew Libatique, Cinematography",
      "Jay Cassidy, Editor",
      "Evan Schiff, Editor",
    ];
  }

  String getPg() {
    return "PG-13";
  }

  List<String> getStudio() {
    if (this.studio.length > 0) return this.cast;
    return [
      "DC Films",
      "Warner Bros. Pictures",
      "LuckyChap Entertainment",
      "Kroll & Co. Entertainment"
    ];
  }

  void addReview(Review toAdd) {
    reviews.add(toAdd);
  }

  List<Review> getReviews() {
    if (reviews.length <= 0) {
      return [];
    } else
      return this.reviews;
  }

  List<int> reviewsCount() {
    List<int> result = new List.generate(10, (i) => 0);
    int rate;

    for (Review r in this.reviews) {
      rate = (r.getRating() * 2 - 1).toInt();
      result[rate]++;
    }

    //return result;
    return [2, 4, 5, 6, 7, 1, 0, 5, 4, 6];
  }
}
