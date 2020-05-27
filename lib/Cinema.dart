class Cinema {
  Cinema(int id, String s, String ad, List<int> movies) {
    this.id = id;
    this.name = s;
    this.address = ad;
    this.movies = movies;
  }

  int id;
  String name;
  String address;
  List<int> movies;

  int getID() {
    return this.id;
  }

  String getName() {
    return this.name;
  }

  String getAddress() {
    return this.address;
  }

  List<int> getMovies() {
    return this.movies;
  }
}
