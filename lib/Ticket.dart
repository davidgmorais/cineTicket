import 'package:flutter/material.dart';

class Ticket {
  String name;
  String poster;
  String date;
  String time;
  String cinema;
  String address;
  String room;
  List<String> seats;
  Color color;

  Ticket(this.name, this.poster, this.date, this.time, this.cinema,
      this.address, this.room, this.seats, this.color);

  Color getColor() {
    return this.color;
  }

  String getMovieName() {
    return this.name;
  }

  String getMoviePoster() {
    return this.poster;
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
}
