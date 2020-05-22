import 'package:cineticketfinal/Review.dart';

class Movie {
  Movie(String s, double pop, String bg, String poster) {
    this.name = s;
    this.popularity = pop;
    this.background = bg;
    this.poster = poster;
  }

  String name;
  String director;
  int year;
  double popularity;
  String background;
  String poster;
  List<String> genres;
  int time;
  String summary;
  List<Review> reviews = [];
  List<String> cast = [];
  List<String> crew = [];
  List<String> studio = [];

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

  int getTime() {
    if (time != null) {
      return this.time;
    }
    return 120;
  }

  int getSummaryLength() {
    if (this.summary != null) {
      return this.summary.length;
    }
    return "In one of the most dangerous missions of the war, an American B-17 pilot volunteers to fly a surrendered Messerschmidt 109 on a daring flight through the heart of Germany to try to prevent the people of London from being terrorized by the V-2 rockets. \"Rocket Hunter\" tells the story of an amazing pilot and his bombardier brother from the time they are teenagers dreaming of taking to the skies to the dark days of January 1945."
        .length;
  }

  String getSummary() {
    if (this.summary != null) {
      return this.summary;
    }
    return "In one of the most dangerous missions of the war, an American B-17 pilot volunteers to fly a surrendered Messerschmidt 109 on a daring flight through the heart of Germany to try to prevent the people of London from being terrorized by the V-2 rockets. \"Rocket Hunter\" tells the story of an amazing pilot and his bombardier brother from the time they are teenagers dreaming of taking to the skies to the dark days of January 1945.";
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
    if (this.director == null) return "Quentin Tarantino";
    return this.director;
  }

  int getYear() {
    if (this.year != null) return this.year;
    return 2019;
  }

  List<String> getCast() {
    if (this.cast.length > 0) return this.cast;
    return [
      "António Antones, Andrew Anderson",
      "Maria Mariana, Natercia",
      "Paula Pauline, Árvore #1"
    ];
  }

  List<String> getCrew() {
    if (this.crew.length > 0) return this.cast;
    return [
      "António Banderas, Writter",
      "Maria Rita, Producer",
      "Paula Loubo Antunies, Camera"
    ];
  }

  List<String> getStudio() {
    if (this.studio.length > 0) return this.cast;
    return ["Dreama worka"];
  }

  List<Review> getReviews() {
    if (reviews.length <= 0) {
      List<Review> rev = [
        new Review(
            "É um filme muito bonito e engraçado e como diz a juventude, 'mindblowing'",
            1.5,
            "Marianita 8=>",
            false),
        new Review("Gandas tetas", 5.0, "marta", true)
      ];
      return rev;
    } else
      return this.reviews;
  }

  List<int> reviewsCount() {
    return [2, 4, 5, 6, 7, 1, 0, 5, 4, 6];
  }
}
