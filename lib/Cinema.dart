class Cinema {
  Cinema(String s, String ad) {
    this.name = s;
    this.address = ad;
  }

  String name;
  String address;

  String getName() {
    return this.name;
  }

  String getAddress() {
    return this.address;
  }
}
