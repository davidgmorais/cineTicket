import 'package:flutter/foundation.dart';

class Review {
  String text;
  double rating;
  String userName;
  bool containsSpoiler;

  Review(String text, double pop, String un, bool sp) {
    this.text = text;
    this.rating = pop;
    this.userName = un;
    this.containsSpoiler = sp;
  }

  String getReview() {
    return this.text;
  }

  double getRating() {
    return this.rating;
  }

  String getUsername() {
    return this.userName;
  }

  bool dosContainsSpoiler() {
    return this.containsSpoiler;
  }
}
