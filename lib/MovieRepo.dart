import 'package:flutter/material.dart';
import 'package:cineticketfinal/Movie.dart';
import 'package:cineticketfinal/Ticket.dart';

class MovieRepo {
  static final _tickets = [
    new Ticket(
      "Rocket Hunter",
      "https://yts.mx/assets/images/movies/rocket_hunter_2020/medium-cover.jpg",
      "27/02/2020",
      "00:00",
      "Casa das Artes do Porto",
      "Porto",
      "C",
      ["2F"],
      Color.fromRGBO(61, 74, 63, 1),
    ),
    new Ticket(
      "13",
      "https://yts.mx/assets/images/movies/13_2010/medium-cover.jpg",
      "27/02/2020",
      "00:00",
      "Cinemas NOS",
      "Palacio do Gelo, Viseu",
      "5",
      ["5H", "6H", "7H"],
      Color.fromRGBO(186, 43, 41, 1),
    ),
    new Ticket(
      "Emma.",
      "https://yts.mx/assets/images/movies/emma_2020/medium-cover.jpg",
      "22/05/2020",
      "21:35",
      "Cinema Trindade",
      "Rua do Almada, Porto",
      "1",
      ["2F", "3F"],
      Color.fromRGBO(241, 205, 49, 1),
    ),
  ];

  static final _allMovies = [
    new Movie(
        "Rocket Hunter",
        2.0 * 10,
        "https://yts.mx/assets/images/movies/rocket_hunter_2020/background.jpg",
        "https://yts.mx/assets/images/movies/rocket_hunter_2020/medium-cover.jpg"),
    new Movie(
        "Elephant",
        7.0 * 10,
        "https://yts.mx/assets/images/movies/elephant_2020/background.jpg",
        "https://yts.mx/assets/images/movies/elephant_2020/medium-cover.jpg"),
    new Movie(
        "Bloodhound",
        2.9 * 10,
        "https://yts.mx/assets/images/movies/bloodhound_2020/background.jpg",
        "https://yts.mx/assets/images/movies/bloodhound_2020/medium-cover.jpg"),
    new Movie(
        "The Lost Husband",
        5.6 * 10,
        "https://yts.mx/assets/images/movies/the_lost_husband_2020/background.jpg",
        "https://yts.mx/assets/images/movies/the_lost_husband_2020/medium-cover.jpg"),
    new Movie(
        "Emma.",
        6.8 * 10,
        "https://yts.mx/assets/images/movies/emma_2020/background.jpg",
        "https://yts.mx/assets/images/movies/emma_2020/medium-cover.jpg"),
    new Movie(
        "Reality Queen!",
        3.3 * 10,
        "https://yts.mx/assets/images/movies/reality_queen_2019/background.jpg",
        "https://yts.mx/assets/images/movies/reality_queen_2019/medium-cover.jpg"),
    new Movie(
        "The Grudge",
        4.2 * 10,
        "https://yts.mx/assets/images/movies/the_grudge_2020/background.jpg",
        "https://yts.mx/assets/images/movies/the_grudge_2020/medium-cover.jpg"),
    new Movie(
        "Redemption",
        2.2 * 10,
        "https://yts.mx/assets/images/movies/redemption_2020/background.jpg",
        "https://yts.mx/assets/images/movies/redemption_2020/medium-cover.jpg"),
    new Movie(
        "365 Days",
        3.5 * 10,
        "https://yts.mx/assets/images/movies/365_days_2020/background.jpg",
        "https://yts.mx/assets/images/movies/365_days_2020/medium-cover.jpg"),
    new Movie(
        "Birds of Prey: And the Fantabulous Emancipation of One Harley Quinn",
        6.2 * 10,
        "https://yts.mx/assets/images/movies/birds_of_prey_and_the_fantabulous_emancipation_of_one_harley_quinn_2020/background.jpg",
        "https://yts.mx/assets/images/movies/birds_of_prey_and_the_fantabulous_emancipation_of_one_harley_quinn_2020/medium-cover.jpg"),
    new Movie(
        "The Main Event",
        4.7 * 10,
        "https://yts.mx/assets/images/movies/the_main_event_2020/background.jpg",
        "https://yts.mx/assets/images/movies/the_main_event_2020/medium-cover.jpg"),
    new Movie(
        "2 Graves in the Desert",
        2.6 * 10,
        "https://yts.mx/assets/images/movies/2_graves_in_the_desert_2020/background.jpg",
        "https://yts.mx/assets/images/movies/2_graves_in_the_desert_2020/medium-cover.jpg"),
    new Movie(
        "The Wishmas Tree",
        5.1 * 10,
        "https://yts.mx/assets/images/movies/the_wishmas_tree_2020/background.jpg",
        "https://yts.mx/assets/images/movies/the_wishmas_tree_2020/medium-cover.jpg"),
    new Movie(
        "Villain",
        6.3 * 10,
        "https://yts.mx/assets/images/movies/villain_2020/background.jpg",
        "https://yts.mx/assets/images/movies/villain_2020/medium-cover.jpg"),
    new Movie(
        "The Murder of Nicole Brown Simpson",
        0.0 * 10,
        "https://yts.mx/assets/images/movies/the_murder_of_nicole_brown_simpson_2019/background.jpg",
        "https://yts.mx/assets/images/movies/the_murder_of_nicole_brown_simpson_2019/medium-cover.jpg"),
    new Movie(
        "Rogue Warfare: Death of a Nation",
        4.6 * 10,
        "https://yts.mx/assets/images/movies/rogue_warfare_death_of_a_nation_2020/background.jpg",
        "https://yts.mx/assets/images/movies/rogue_warfare_death_of_a_nation_2020/medium-cover.jpg"),
    new Movie(
        "Edgar Allan Poe's Ligeia",
        0.0 * 10,
        "https://yts.mx/assets/images/movies/edgar_allen_poes_ligeia_2020/background.jpg",
        "https://yts.mx/assets/images/movies/edgar_allen_poes_ligeia_2020/medium-cover.jpg"),
    new Movie(
        "Killer Camera Monsters",
        2.5 * 10,
        "https://yts.mx/assets/images/movies/killer_camera_monsters_2020/background.jpg",
        "https://yts.mx/assets/images/movies/killer_camera_monsters_2020/medium-cover.jpg"),
    new Movie(
        "Sunburn",
        0.0 * 10,
        "https://yts.mx/assets/images/movies/sunburn_2018/background.jpg",
        "https://yts.mx/assets/images/movies/sunburn_2018/medium-cover.jpg"),
    new Movie(
        "The Bet",
        3.0 * 10,
        "https://yts.mx/assets/images/movies/the_bet_2020/background.jpg",
        "https://yts.mx/assets/images/movies/the_bet_2020/medium-cover.jpg"),
    new Movie(
        "Bulletproof 2",
        3.5 * 10,
        "https://yts.mx/assets/images/movies/bulletproof_2_2020/background.jpg",
        "https://yts.mx/assets/images/movies/bulletproof_2_2020/medium-cover.jpg"),
    new Movie(
        "Inmate Zero",
        4.0 * 10,
        "https://yts.mx/assets/images/movies/inmate_zero_2019/background.jpg",
        "https://yts.mx/assets/images/movies/inmate_zero_2019/medium-cover.jpg"),
    new Movie(
        "Angels Fallen",
        5.6 * 10,
        "https://yts.mx/assets/images/movies/angels_fallen_2020/background.jpg",
        "https://yts.mx/assets/images/movies/angels_fallen_2020/medium-cover.jpg"),
    new Movie(
        "Hotwired in Suburbia",
        3.7 * 10,
        "https://yts.mx/assets/images/movies/grand_theft_auto_girls_2020/background.jpg",
        "https://yts.mx/assets/images/movies/grand_theft_auto_girls_2020/medium-cover.jpg"),
    new Movie(
        "Blood Widow",
        3.6 * 10,
        "https://yts.mx/assets/images/movies/blood_widow_2019/background.jpg",
        "https://yts.mx/assets/images/movies/blood_widow_2019/medium-cover.jpg"),
    new Movie(
        "The Host",
        4.9 * 10,
        "https://yts.mx/assets/images/movies/the_host_2020/background.jpg",
        "https://yts.mx/assets/images/movies/the_host_2020/medium-cover.jpg"),
    new Movie(
        "Alone",
        3.1 * 10,
        "https://yts.mx/assets/images/movies/alone_2020/background.jpg",
        "https://yts.mx/assets/images/movies/alone_2020/medium-cover.jpg"),
    new Movie(
        "24 Little Hours",
        5.2 * 10,
        "https://yts.mx/assets/images/movies/24_little_hours_2020/background.jpg",
        "https://yts.mx/assets/images/movies/24_little_hours_2020/medium-cover.jpg"),
    new Movie(
        "Disturbing the Peace",
        3.1 * 10,
        "https://yts.mx/assets/images/movies/disturbing_the_peace_2020/background.jpg",
        "https://yts.mx/assets/images/movies/disturbing_the_peace_2020/medium-cover.jpg"),
    new Movie(
        "The Windermere Children",
        0.0 * 10,
        "https://yts.mx/assets/images/movies/the_windermere_children_2020/background.jpg",
        "https://yts.mx/assets/images/movies/the_windermere_children_2020/medium-cover.jpg"),
    new Movie(
        "Battle Star Wars",
        1.6 * 10,
        "https://yts.mx/assets/images/movies/battle_star_wars_2020/background.jpg",
        "https://yts.mx/assets/images/movies/battle_star_wars_2020/medium-cover.jpg"),
    new Movie(
        "John Henry",
        3.4 * 10,
        "https://yts.mx/assets/images/movies/john_henry_2020/background.jpg",
        "https://yts.mx/assets/images/movies/john_henry_2020/medium-cover.jpg"),
    new Movie(
        "Dead Earth",
        4.4 * 10,
        "https://yts.mx/assets/images/movies/two_of_us_2020/background.jpg",
        "https://yts.mx/assets/images/movies/two_of_us_2020/medium-cover.jpg"),
    new Movie(
        "Dragonheart Vengeance",
        5.1 * 10,
        "https://yts.mx/assets/images/movies/dragonheart_vengeance_2020/background.jpg",
        "https://yts.mx/assets/images/movies/dragonheart_vengeance_2020/medium-cover.jpg"),
    new Movie(
        "Heavenquest: A Pilgrim's Progress",
        3.3 * 10,
        "https://yts.mx/assets/images/movies/heavenquest_a_pilgrims_progress_2020/background.jpg",
        "https://yts.mx/assets/images/movies/heavenquest_a_pilgrims_progress_2020/medium-cover.jpg"),
    new Movie(
        "Resistance",
        5.9 * 10,
        "https://yts.mx/assets/images/movies/resistance_2020/background.jpg",
        "https://yts.mx/assets/images/movies/resistance_2020/medium-cover.jpg"),
    new Movie(
        "Uncorked",
        6.2 * 10,
        "https://yts.mx/assets/images/movies/uncorked_2020/background.jpg",
        "https://yts.mx/assets/images/movies/uncorked_2020/medium-cover.jpg"),
    new Movie(
        "Deported",
        3.7 * 10,
        "https://yts.mx/assets/images/movies/deported_2020/background.jpg",
        "https://yts.mx/assets/images/movies/deported_2020/medium-cover.jpg"),
    new Movie(
        "10 Things We Should Do Before We Break Up",
        5.0 * 10,
        "https://yts.mx/assets/images/movies/10_things_we_should_do_before_we_break_up_2020/background.jpg",
        "https://yts.mx/assets/images/movies/10_things_we_should_do_before_we_break_up_2020/medium-cover.jpg"),
  ];

  static List<Movie> loadTrending() {
    if (_allMovies.isEmpty) {
      return null;
    } else {
      return _allMovies.where((p) => p.getPop() > 60.0).toList();
    }
  }

  static List<Movie> LoadForYou() {
    if (_allMovies.isEmpty) {
      return null;
    } else {
      return _allMovies.where((p) => p.getPop() > 40.0).toList();
    }
  }

  static List<Movie> LoadAll() {
    return _allMovies;
  }

  static List<Ticket> LoadTickets() {
    return _tickets;
  }

  static int getTicketQuant(Movie movie) {
    int count = 0;
    for (Ticket t in _tickets) {
      if (identical(movie.getName(), t.name)) count++;
    }
    return count;
  }
}
