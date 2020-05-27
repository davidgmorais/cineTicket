import 'dart:collection';

import 'package:cineticketfinal/MovieRepo.dart';
import 'package:flutter/material.dart';

import 'Movie.dart';

class Ticket {
  int id;
  String name;
  String poster;
  String date;
  String time;
  String cinema;
  String address;
  String room;
  String format;
  List<String> seats;
  Color color;

  var categories = {"Normal": 0, "Child": 0, "Senior": 0, "Twofer": 0};

  Ticket(this.id, this.date, this.time, this.cinema, this.address, this.room,
      this.seats, this.format);

  Ticket.withCategory(this.id, this.date, this.time, this.cinema, this.address,
      this.room, this.seats, this.format, this.categories);

  Ticket.expiredTicket(
      this.name,
      this.poster,
      this.date,
      this.time,
      this.cinema,
      this.address,
      this.room,
      this.seats,
      this.format,
      this.color,
      this.categories);

  Color getColor() {
    if (id == null) {
      return this.color;
    } else {
      Movie m = MovieRepo.getMovie(this.id);

      return m.getColor();
    }
  }

  void addCategory(String cat, int qty) {
    this.categories[cat] = qty;
  }

  int getNormal() {
    return this.categories["Normal"];
  }

  int getChild() {
    return this.categories["Child"];
  }

  int getSenior() {
    return this.categories["Senior"];
  }

  int getTwofer() {
    return this.categories["Twofer"];
  }

  String getMovieName() {
    if (id == null) {
      return this.name;
    } else {
      return MovieRepo.getMovie(this.id).getName();
    }
  }

  String getMoviePoster() {
    if (id == null) {
      return this.poster;
    } else {
      return MovieRepo.getMovie(this.id).getPoster();
    }
  }

  String getDate() {
    return this.date;
  }

  String getTime() {
    return this.time;
  }

  String getCinema() {
    return this.cinema;
  }

  String getRoom() {
    return this.room;
  }

  String getAddres() {
    return this.address;
  }

  String getSeats() {
    String s = "";
    for (String seat in seats) {
      s += seat;
      s += ", ";
    }
    s = s.substring(0, s.length - 2);
    return s;
  }

  void setSeat(List<String> list) {
    this.seats = list;
    this.room = "5";
  }

  String getFormat() {
    return "2D subtittled";
  }
}
