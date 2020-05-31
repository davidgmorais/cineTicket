import 'package:cineticketfinal/Cinema.dart';
import 'package:cineticketfinal/Review.dart';
import 'package:flutter/material.dart';
import 'package:cineticketfinal/Movie.dart';
import 'package:cineticketfinal/Ticket.dart';

class MovieRepo {
  static final _seatChart = [
    //new Line
    null, null, 1, 1, 0, 0, 0, 0, 0, -2,
    //new Line
    null, 0, 1, 1, 0, 1, 0, 0, 0, -2,
    //new line
    0, 0, 0, 1, 0, 0, 0, 0, 0, -2,
    //new line
    0, 0, 0, 0, 0, 0, 1, 0, 0, -2,
    //new line
    0, 0, 0, 1, 1, 0, 0, 0, 0, -2,
    //new line
    0, 0, 0, 1, 0, 0, 0, 0, 0, -2,
    //new line
    0, 0, 0, 1, 0, 0, 0, 0, 0, -2,
    //new line
    0, 0, 0, 1, 0, 0, 0, 0, 0, -2,
    //new line
    0, 0, 0, 1, 1, 0, 0, 0, 0, -2,
    //new line
    0, 0, 0, 0, 0, 0, 0, 0, 0, -2,
    //new line
    0, 0, 0, 0, 0, 0, 0, 0, 0, -2,
    //new line
    0, 0, 0, 0, 0, 0, 0, 0, 0, -2,
    //new line
    0, 0, 0, 0, 0, 0, 0, 0, 0, -2,
    //new line
    0, 0, 0, 0, 0, 0, 0, 0, 0, -2,
    //new line
    0, 0, 0, 0, 0, 0, 0, 0, 0, -2,
    //new line
    0, 0, 0, 0, 0, 0, 0, 0, 0, -2,
    //new line
    0, 0, 0, 0, 0, 0, 0, 0, 0, -2,
    //new line
    0, 0, 0, 0, 0, 0, 0, 0, 0, -2,
    //new line
    null, 0, 0, 0, 0, 0, 0, 0, 0, -2,
    //new line
    null, null, 0, 0, 0, 0, 0, 0, 0, -2
  ];

  static final _cinemas = [
    new Cinema(1, "NOS cinemas", "Palacio do gelo",
        [12, 14, 1, 4, 19, 8, 10, 13, 9, 17]),
    new Cinema(2, "Teatro Viriato", "Rua das Bocas, Viseu",
        [1, 2, 14, 15, 4, 19, 8, 10, 13, 9, 7, 17]),
    new Cinema(4, "Cinema Trindade", "Rua do Almada, Porto",
        [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]),
    new Cinema(5, "Casa das Artes do Porto", "Porto",
        [11, 12, 13, 14, 15, 16, 17, 18]),
  ];

  static final _tickets = [
    new Ticket.withCategory(
      1,
      "02/09/2020",
      "20:45",
      "Casa das Artes do Porto",
      "Porto",
      "C",
      ["2F"],
      "IMAX subtitled",
      {"Normal": 0, "Child": 0, "Senior": 2, "Twofer": 1},
    ),
    new Ticket.expiredTicket(
      "13",
      "https://yts.mx/assets/images/movies/13_2010/medium-cover.jpg",
      "27/02/2020",
      "15:20",
      "Cinemas NOS",
      "Palacio do Gelo, Viseu",
      "5",
      ["5H", "6H", "7H"],
      "3D dubbed",
      Color.fromRGBO(186, 43, 41, 1),
      {"Normal": 2, "Child": 0, "Senior": 0, "Twofer": 0},
    ),
    new Ticket.withCategory(
      5,
      "22/05/2020",
      "21:35",
      "Cinema Trindade",
      "Rua do Almada, Porto",
      "1",
      ["2F", "3F"],
      "2D subtitled",
      {"Normal": 1, "Child": 1, "Senior": 1, "Twofer": 2},
    ),
  ];

  static final _allMovies = [
    new Movie(
      "Rocket Hunter",
      16.0,
      "https://yts.mx/assets/images/movies/rocket_hunter_2020/background.jpg",
      "https://yts.mx/assets/images/movies/rocket_hunter_2020/medium-cover.jpg",
      "Christopher Forbes",
      2020,
      ['Action', 'War'],
      0,
      "PG-13",
      "In one of the most dangerous missions of the war, an American B-17 pilot volunteers to fly a surrendered Messerschmidt 109 on a daring flight through the heart of Germany to try to prevent the people of London from being terrorized by the V-2 rockets. \"Rocket Hunter\" tells the story of an amazing pilot and his bombardier brother from the time they are teenagers dreaming of taking to the skies to the dark days of January 1945.",
      Color.fromRGBO(91, 106, 84, 1),
    ),
    new Movie(
      "Elephant",
      70.0,
      "https://yts.mx/assets/images/movies/elephant_2020/background.jpg",
      "https://yts.mx/assets/images/movies/elephant_2020/medium-cover.jpg",
      "Gus Van Sant",
      2020,
      ['Adventure', 'Biography', 'Documentary', 'Family'],
      86,
      "PG-13",
      "Documentary follows an African elephant named Shani and her son Jomo as their herd make an epic journey across the Kalahari Desert.",
      Color.fromRGBO(146, 151, 166, 1),
    ),
    new Movie(
      "Bloodhound",
      29.0,
      "https://yts.mx/assets/images/movies/bloodhound_2020/background.jpg",
      "https://yts.mx/assets/images/movies/bloodhound_2020/medium-cover.jpg",
      "Jason Richard Miller",
      2020,
      ['Crime', 'Drama', 'Horror'],
      0,
      "PG-13",
      "Private investigator Abel Walker (Ackerman) along with his cameraman, Jim (Foy), are on the hunt for a missing woman. As they unravel the mystery of her disappearance, they become caught in a sick and violent game that will end in murder.",
      Color.fromRGBO(236, 134, 77, 1),
    ),
    new Movie(
      "The Lost Husband",
      56.0,
      "https://yts.mx/assets/images/movies/the_lost_husband_2020/background.jpg",
      "https://yts.mx/assets/images/movies/the_lost_husband_2020/medium-cover.jpg",
      "Vicky Wight",
      2020,
      ['Romance'],
      109,
      "PG-13",
      "After the sudden death of her husband, Libby is forced to move in with her hypercritical mother. Out of the blue, her estranged Aunt Jean offers an escape: a job and a place to live on her farm in the Texas Hill Country. Before she can talk herself out of it, Libby is packing the minivan, grabbing the kids, and hitting the road. Life on Aunt Jean's goat farm is more wonderful and more mysterious than Libby could have imagined. Beyond the animals and the strenuous work, there is quiet - deep, country quiet. But there is also a shaggy, gruff farm manager with a tragic home life, a feed-store clerk who claims she can contact her husband on \"the other side,\" and the eccentric aunt she never really knew but who turns out to be exactly who she needs.",
      Color.fromRGBO(198, 204, 197, 1),
    ),
    new Movie(
      "Emma.",
      68.0,
      "https://yts.mx/assets/images/movies/emma_2020/background.jpg",
      "https://yts.mx/assets/images/movies/emma_2020/medium-cover.jpg",
      "Autumn de Wild",
      2020,
      ['Comedy', 'Drama'],
      124,
      "PG-13",
      "Jane Austen's beloved comedy about finding your equal and earning your happy ending, is reimagined in this. Handsome, clever, and rich, Emma Woodhouse is a restless queen bee without rivals in her sleepy little town. In this glittering satire of social class and the pain of growing up, Emma must adventure through misguided matches and romantic missteps to find the love that has been there all along.",
      Color.fromRGBO(241, 205, 49, 1),
    ),
    new Movie(
      "Reality Queen!",
      33.0,
      "https://yts.mx/assets/images/movies/reality_queen_2019/background.jpg",
      "https://yts.mx/assets/images/movies/reality_queen_2019/medium-cover.jpg",
      "Steven Jay Bernheim",
      2020,
      ['Comedy'],
      84,
      "PG-13",
      "Reality Queen is a comedy centering on the life of a Paris Hilton-esque heiress named \"London\" who is struggling to regain fame after being pushed out of the limelight by three Kardashian-type sisters named \"The Kims.\" London's life is a self-indulgent maelstrom of product endorsements, talent managers, pet psychics, private jets, fashion shows, yachts, and a celebrity posse. Despite her wackiness, she ultimately makes it back to the top of the heap. This parody of America's infatuation with fame raises the question: are these celebs-for-no-reason marketing geniuses, or are they just the accidental beneficiaries of the stupidity of the American public?",
      Color.fromRGBO(189, 154, 116, 1),
    ),
    new Movie(
      "The Grudge",
      42.0,
      "https://yts.mx/assets/images/movies/the_grudge_2020/background.jpg",
      "https://yts.mx/assets/images/movies/the_grudge_2020/medium-cover.jpg",
      "Nicolas Pesce",
      2020,
      ['Horror', 'Mystery'],
      94,
      "PG-13",
      "After a young housewife murders her family in her own house, a single mother and young detective tries to investigate and solve the case. Later, she discovers the house is cursed by a vengeful ghost that dooms those who enter it with a violent death. Now, she runs to save herself and her son from demonic spirits from the cursed house in her neighborhood.",
      Color.fromRGBO(49, 48, 41, 1),
    ),
    new Movie(
      "Redemption",
      22.0,
      "https://yts.mx/assets/images/movies/redemption_2020/background.jpg",
      "https://yts.mx/assets/images/movies/redemption_2020/medium-cover.jpg",
      "Uttam Mukherjee",
      2020,
      ['Crime', 'Drama', 'Thriller'],
      85,
      "PG-13",
      "In quest of freedom a young and petite girl, Zoya runs away from her over-protective and domineering father and then has to overcome an insane family of abductors, liars and rapists.",
      Color.fromRGBO(10, 10, 10, 1),
    ),
    new Movie(
      "365 Days",
      35.0,
      "https://yts.mx/assets/images/movies/365_days_2020/background.jpg",
      "https://yts.mx/assets/images/movies/365_days_2020/medium-cover.jpg",
      "Barbara Białowąs",
      2020,
      ['Drama'],
      114,
      "PG-13",
      "Massimo Torricelli, a young and handsome boss of a Sicilian Mafia family, has no other option but to takeover after his father has been assassinated. Laura is a sales director in a luxurious hotel in Warsaw. She has a successful career, but her private life lacks passion. She is taking one last shot to save her relationship. Together with her bone-headed boyfriend, Martin and some other friends, she takes a trip to Sicily. She does not expect that Massimo, the most dangerous man on the island, will get in her way, kidnap her, hold her captive and give her 365 days - to fall in love with him.",
      Color.fromRGBO(186, 129, 92, 1),
    ),
    new Movie(
      "Birds of Prey: And the Fantabulous Emancipation of One Harley Quinn",
      62.0,
      "https://yts.mx/assets/images/movies/birds_of_prey_and_the_fantabulous_emancipation_of_one_harley_quinn_2020/background.jpg",
      "https://yts.mx/assets/images/movies/birds_of_prey_and_the_fantabulous_emancipation_of_one_harley_quinn_2020/medium-cover.jpg",
      "Cathy Yan",
      2020,
      ['Action', 'Adventure', 'Crime'],
      109,
      "PG-13",
      "A twisted tale told by Harley Quinn herself, when Gotham's most nefariously narcissistic villain, Roman Sionis, and his zealous right-hand, Zsasz, put a target on a young girl named Cass, the city is turned upside down looking for her. Harley, Huntress, Black Canary and Renee Montoya's paths collide, and the unlikely foursome have no choice but to team up to take Roman down.",
      Color.fromRGBO(38, 195, 152, 1),
    ),
    new Movie(
      "The Main Event",
      47.0,
      "https://yts.mx/assets/images/movies/the_main_event_2020/background.jpg",
      "https://yts.mx/assets/images/movies/the_main_event_2020/medium-cover.jpg",
      "Jay Karas",
      2020,
      ['Action', 'Comedy', 'Family'],
      101,
      "PG-13",
      "When 11-year-old Leo Thompson (Seth Carr) discovers a magical wrestling mask that grants him super strength, he uses it to enter a WWE competition. With the support of his grandmother (Tichina Arnold), Leo will do whatever it takes to achieve his dream of becoming a WWE Superstar. Can one kid win it all, in the face of epic challengers in the ring? Directed by Jay Karas, THE MAIN EVENT co-stars Adam Pally, Ken Marino, and features WWE Superstars Kofi Kingston, The Miz and Sheamus.",
      Color.fromRGBO(66, 107, 150, 1),
    ),
    new Movie(
      "2 Graves in the Desert",
      26.0,
      "https://yts.mx/assets/images/movies/2_graves_in_the_desert_2020/background.jpg",
      "https://yts.mx/assets/images/movies/2_graves_in_the_desert_2020/medium-cover.jpg",
      "Benjamin Goalabré",
      2020,
      ['Thriller'],
      84,
      "PG-13",
      "When Eric wakes up, tied and gagged in the trunk of a pick-up truck, it's instantly clear he's been kidnapped and he quickly discovers he's accompanied by a young woman, Blake, another hostage. Neither can recall how they ended up in this dire situation, and together they desperately try and get any help they can. With no help coming, and as things become more and more hopeless, it soon becomes apparent that there is more at stake than it first seems. The two kidnappers have their own agenda, and it's not a pleasant one. Starring Michael Madsen and William Baldwin, 2 Graves In The Desert is a cold thriller set on the blazing road to Las Vegas, provoking the ultimate question - is there any way the hostages can escape alive?",
      Color.fromRGBO(58, 39, 26, 1),
    ),
    new Movie(
      "The Wishmas Tree",
      51.0,
      "https://yts.mx/assets/images/movies/the_wishmas_tree_2020/background.jpg",
      "https://yts.mx/assets/images/movies/the_wishmas_tree_2020/medium-cover.jpg",
      "Ricard Cussó",
      2020,
      ['Animation'],
      90,
      "PG-13",
      "A young possum's misguided wish for a white Wishmas not only freezes her entire hometown of Sanctuary City, but also threatens the lives of all who live there. Before the magical Wishmas Tree dies, she must undertake a perilous journey into the WILD; battling self-doubt, ghostly predators and ultimately, Extinction itself, to reverse the damage she has caused and save her city.",
      Color.fromRGBO(66, 186, 189, 1),
    ),
    new Movie(
      "Villain",
      63.0,
      "https://yts.mx/assets/images/movies/villain_2020/background.jpg",
      "https://yts.mx/assets/images/movies/villain_2020/medium-cover.jpg",
      "Philip Barantini",
      2020,
      ['Crime', 'Drama', 'Thriller'],
      97,
      "PG-13",
      "The story follows (Eddie Franks) a former criminals release from prison and his attempts to help his family by reconnecting with his daughter and clearing his brother's debt. Despite his efforts, he is drawn back into a criminal way of life, with devastating consequences.",
      Color.fromRGBO(93, 188, 210, 1),
    ),
    new Movie(
      "The Murder of Nicole Brown Simpson",
      0.0,
      "https://yts.mx/assets/images/movies/the_murder_of_nicole_brown_simpson_2019/background.jpg",
      "https://yts.mx/assets/images/movies/the_murder_of_nicole_brown_simpson_2019/medium-cover.jpg",
      "Daniel Farrands",
      2020,
      ['Crime', 'Thriller'],
      82,
      "PG-13",
      "Inspired by true events, the film follows OJ Simpson's ex-wife Nicole Brown Simpson in the last days before her tragic death on June 12th 1994, as seen from her point of view.",
      Color.fromRGBO(196, 117, 99, 1),
    ),
    new Movie(
      "Rogue Warfare: Death of a Nation",
      46.0,
      "https://yts.mx/assets/images/movies/rogue_warfare_death_of_a_nation_2020/background.jpg",
      "https://yts.mx/assets/images/movies/rogue_warfare_death_of_a_nation_2020/medium-cover.jpg",
      "Mike Gunther",
      2020,
      ['Action'],
      95,
      "PG-13",
      "The Black Mask Organization coordinates a twisted plot which will devastate the world within the next 36 hours. The TEAM is immediately dispatched again for what will hopefully be the last stand against the 'Supreme Leader.' As the clock ticks, so does the bomb and they need to strike back at the very core of the terrorist group. The team must throw their lives on the line as it's the only way to deactivate the dangerous weapons which are set to explode across the world at the same time. Each soldier must find his inner strength and skill to disarm this terrorist group once and for all.",
      Color.fromRGBO(157, 156, 156, 1),
    ),
    new Movie(
      "Killer Camera Monsters",
      25.0,
      "https://yts.mx/assets/images/movies/killer_camera_monsters_2020/background.jpg",
      "https://yts.mx/assets/images/movies/killer_camera_monsters_2020/medium-cover.jpg",
      "Ryan McBay",
      2020,
      ['Horror', 'Thriller'],
      86,
      "PG-13",
      "A struggling photographer gets more than he bargained for, discovering the truth of what his new camera is really capable of.",
      Color.fromRGBO(145, 106, 84, 1),
    ),
    new Movie(
      "Sunburn",
      20.0,
      "https://yts.mx/assets/images/movies/sunburn_2018/background.jpg",
      "https://yts.mx/assets/images/movies/sunburn_2018/medium-cover.jpg",
      "Ryan McBay",
      2020,
      ['Horror', 'Mystery', 'Thriller'],
      85,
      "PG-13",
      "During the hot, sweltering summer, Mike, a young American tourist goes looking for his missing friend in an isolated Spanish village. Here, he gets embroiled with an alluring local woman who soon becomes obsessed with him. Forced to escape, Mike soon finds that the horror is far greater than he could have ever imagined.",
      Color.fromRGBO(148, 96, 43, 1),
    ),
    new Movie(
      "The Bet",
      30.0,
      "https://yts.mx/assets/images/movies/the_bet_2020/background.jpg",
      "https://yts.mx/assets/images/movies/the_bet_2020/medium-cover.jpg",
      "Joan Carr-Wiggin",
      2020,
      ['Comedy'],
      0,
      "PG-13",
      "A woman makes a bet with her husband that she can get the next man she sees to propose to her.",
      Color.fromRGBO(174, 199, 135, 1),
    ),
    new Movie(
      "Bulletproof 2",
      35.0,
      "https://yts.mx/assets/images/movies/bulletproof_2_2020/background.jpg",
      "https://yts.mx/assets/images/movies/bulletproof_2_2020/medium-cover.jpg",
      "Don Michael Paul",
      2020,
      ['Action', 'Comedy', 'Drama'],
      97,
      "PG-13",
      "Set 25 years after the events of the original Bulletproof, the movie recasts Wayans and Sandler's characters with Faizon Love (Friday) and Kirk Fox (Parks and Recreation). In the sequel, Jack (Faizon Love) is now working as a Special Agent with a mission to take down a powerful South African crime family. The officer begrudgingly goes undercover once again, this time taking the identity of Moses (Kirk Fox) - the man who shot him in the head a quarter-century ago who has close ties to the case. Of course, everything goes haywire when the real Moses gets unwittingly put in danger, and Jack and Moses must once again figure out how to stay alive while trying to foil the sinister plans of a high-profile criminal mastermind.",
      Color.fromRGBO(193, 205, 107, 1),
    ),
    new Movie(
      "Inmate Zero",
      40.0,
      "https://yts.mx/assets/images/movies/inmate_zero_2019/background.jpg",
      "https://yts.mx/assets/images/movies/inmate_zero_2019/medium-cover.jpg",
      "Russell Owen",
      2020,
      ['Horror'],
      106,
      "PG-13",
      "When medical trials are pushed to their limits, the most extreme tests end up on St. Leonards Island in the north Atlantic - a re-purposed prison for some of the world's most violent criminals. But when one experiment goes wrong, the entire island becomes a terrifying, disease riddled maze for desperate survivors.",
      Color.fromRGBO(159, 166, 161, 1),
    ),
    new Movie(
      "Angels Fallen",
      56.0,
      "https://yts.mx/assets/images/movies/angels_fallen_2020/background.jpg",
      "https://yts.mx/assets/images/movies/angels_fallen_2020/medium-cover.jpg",
      "Ali Zamani",
      2020,
      ['Horror'],
      86,
      "PG-13",
      "After the tragic loss of his wife battling the forces of darkness, Gabriel is persuaded to rejoin his former team of demon hunters traveling from relatively obscurity in America to the deep unknown regions of Europe. He is joined by his estranged best friend Michael who harbors a dark secret, the mystical Hannah whose visions predict the future, and a motley crew of demon slayers. After losing part of his team Gabriel must confront his tragic past and decide who really is friend or foe.",
      Color.fromRGBO(59, 73, 93, 1),
    ),
    new Movie(
      "Grand Theft Auto Girls",
      37.0,
      "https://yts.mx/assets/images/movies/grand_theft_auto_girls_2020/background.jpg",
      "https://yts.mx/assets/images/movies/grand_theft_auto_girls_2020/medium-cover.jpg",
      "Jason Bourque",
      2020,
      ['Thriller'],
      87,
      "PG-13",
      "A widowed mother must help her teenage daughter escape a life of crime after she becomes embroiled in a dangerous scheme to steal luxury cars for her high school teacher.",
      Color.fromRGBO(191, 134, 147, 1),
    ),
    new Movie(
      "Blood Widow",
      36.0,
      "https://yts.mx/assets/images/movies/blood_widow_2019/background.jpg",
      "https://yts.mx/assets/images/movies/blood_widow_2019/medium-cover.jpg",
      "Brendan Guy Murphy",
      2020,
      ['Horror', 'Mystery', 'Thriller'],
      94,
      "PG-13",
      "A serial killer is terrorizing Arizona with the police in hot pursuit. What the police don't know is that a mysterious group are also pursuing the same killer to stop the killer from unleasing an evil like nothing before. From Vampires to Biblical wrath - everything comes down to one showdown!",
      Color.fromRGBO(241, 205, 49, 1),
    ),
    new Movie(
      "The Host",
      49.0,
      "https://yts.mx/assets/images/movies/the_host_2020/background.jpg",
      "https://yts.mx/assets/images/movies/the_host_2020/medium-cover.jpg",
      "Andy Newbery",
      2020,
      ['Crime', 'Horror', 'Mystery', 'Thriller'],
      102,
      "PG-13",
      "A chance opportunity arises for Robert Atkinson, a London banker who risks his bank's money to leave the mundane behind and start a new life. To take advantage, he unwittingly signs up with a Chinese cartel to transport a briefcase to Amsterdam. But all is not as it seems in a city veiled by dark secrets. Fuelled by power players, drugs, seduction and violence, Robert awaits his turn in a deadly game of choice and consequence.",
      Color.fromRGBO(174, 115, 81, 1),
    ),
    new Movie(
      "Alone",
      31.0,
      "https://yts.mx/assets/images/movies/alone_2020/background.jpg",
      "https://yts.mx/assets/images/movies/alone_2020/medium-cover.jpg",
      "Vladislav Khesin",
      2020,
      ['Thriller'],
      81,
      "PG-13",
      "\"Alone\" follows a writer seeking peace and solitude in the countryside in an attempt to recover from tragedy and finish her book. However, as the welcoming country house turns into a living hell, she soon realizes that her inner demons are not the worst of her problems.",
      Color.fromRGBO(140, 148, 137, 1),
    ),
    new Movie(
      "24 Little Hours",
      52.0,
      "https://yts.mx/assets/images/movies/24_little_hours_2020/background.jpg",
      "https://yts.mx/assets/images/movies/24_little_hours_2020/medium-cover.jpg",
      "Paul Knight",
      2020,
      ['Action', 'Crime', 'Thriller'],
      84,
      "PG-13",
      "Fresh out on the streets from a 10-year prison sentence, a killer is focused on seeking vengeance against his beloved sister's murderers. Aided by those he believes he can trust, they go on a 24 hour killing spree to settle all scores as a discredited detective, whose superior questions her every move must deal with her past before she can uncover the shocking truth behind their motives.",
      Color.fromRGBO(66, 82, 102, 1),
    ),
    new Movie(
      "Disturbing the Peace",
      31.0,
      "https://yts.mx/assets/images/movies/disturbing_the_peace_2020/background.jpg",
      "https://yts.mx/assets/images/movies/disturbing_the_peace_2020/medium-cover.jpg",
      "York Shackleton",
      2020,
      ['Action', 'Adventure', 'Thriller', 'Western'],
      91,
      "PG-13",
      "A small-town marshal who hasn't carried a gun since he left the Texas Rangers after a tragic shooting, must pick up his gun again to battle with a gang of outlaw bikers that has invaded the town to pull off a brazen and violent heist.",
      Color.fromRGBO(216, 144, 66, 1),
    ),
    new Movie(
      "The Windermere Children",
      0.0,
      "https://yts.mx/assets/images/movies/the_windermere_children_2020/background.jpg",
      "https://yts.mx/assets/images/movies/the_windermere_children_2020/medium-cover.jpg",
      "Michael Samuels",
      2020,
      ['Action', 'Drama', 'War'],
      88,
      "PG-13",
      "The harrowing and ultimately life-affirming story of Holocaust children who were relocated and rehabilitated in the UK after World War II. It began with uncertainty and fear in the new land, however it eventually led to the triumph of hope and goodwill and life-long friendship and happiness that they all cherish.",
      Color.fromRGBO(121, 126, 99, 1),
    ),
    new Movie(
      "Battle Star Wars",
      16.0,
      "https://yts.mx/assets/images/movies/battle_star_wars_2020/background.jpg",
      "https://yts.mx/assets/images/movies/battle_star_wars_2020/medium-cover.jpg",
      " James Thomas",
      2020,
      ['Sci-Fi'],
      86,
      "PG-13",
      "When the leader of the evil Coalition threatens to destroy a Rebel planet for its resources, his daughter will have no choice but to join the Rebel side and fight for what is right.",
      Color.fromRGBO(216, 92, 66, 1),
    ),
    new Movie(
      "John Henry",
      34.0,
      "https://yts.mx/assets/images/movies/john_henry_2020/background.jpg",
      "https://yts.mx/assets/images/movies/john_henry_2020/medium-cover.jpg",
      "Will Forbes",
      2020,
      ['Drama', 'Thriller'],
      91,
      "PG-13",
      "Ex-gang member John Henry (Terry Crews) is a quiet man with a violent past. When two immigrant kids on the run from his former South Los Angeles gang leader (Chris \"Ludacris\" Bridges) stumble into his life, John is forced to reconcile with his past in order to try and give them a future.",
      Color.fromRGBO(201, 184, 129, 1),
    ),
    new Movie(
      "Dead Earth",
      44.0,
      "https://yts.mx/assets/images/movies/two_of_us_2020/background.jpg",
      "https://yts.mx/assets/images/movies/two_of_us_2020/medium-cover.jpg",
      "Wych Kaosayananda",
      2020,
      ['Action', 'Drama', 'Thriller'],
      0,
      "PG-13",
      "Two young women's plans to try to live a normal life in isolation after a world ending apocalypse go awry when they are discovered.",
      Color.fromRGBO(156, 9, 10, 1),
    ),
    new Movie(
      "Dragonheart Vengeance",
      51.0,
      "https://yts.mx/assets/images/movies/dragonheart_vengeance_2020/background.jpg",
      "https://yts.mx/assets/images/movies/dragonheart_vengeance_2020/medium-cover.jpg",
      "Ivan Silvestrini",
      2020,
      ['Action', 'Adventure', 'Drama', 'Fantasy', 'Sci-Fi'],
      97,
      "PG-13",
      "Lukas, a young farmer whose family is killed by savage raiders in the countryside, sets out on an epic quest for revenge, forming an unlikely trio with a majestic dragon and a swashbuckling, sword-fighting mercenary, Darius. Helena Bonham Carter voices Siveth, the ice breathing dragon who was once banished from the kingdom for failing to save the king's life. Compelled by the young man's cause, she emerges from hiding, using her fantastical powers on the trio's adventurous journey which brings revelations and rewards beyond vengeance. Dragonheart: Vengeance is an exciting action-adventure filled with fantasy and humor that will thrill the entire family.",
      Color.fromRGBO(128, 150, 182, 1),
    ),
    new Movie(
      "Heavenquest: A Pilgrim's Progress",
      33.0,
      "https://yts.mx/assets/images/movies/heavenquest_a_pilgrims_progress_2020/background.jpg",
      "https://yts.mx/assets/images/movies/heavenquest_a_pilgrims_progress_2020/medium-cover.jpg",
      "Matt Bilen",
      2020,
      ['Action', 'Adventure', 'Fantasy', 'Sci-Fi'],
      92,
      "PG-13",
      "A regal man named Vangel is thrust on a journey against his will when he is suddenly and mysteriously arrested. Injured and lost after escaping the dark king's men, Vangel begins to have strange dreams and visions of a mysterious woman in white calling him from the unknown territory of the North. Armed with a book called \"The Record of the Ancients\" that he receives from a wise sage named Elder, Vangel embarks on an adventure that takes him through treacherous mountain range, unending deserts, the Lake of Doubts, and the Forest of No Return. Along the way, travel companions share about a fabled good king and his son in the North if he can make it there alive.",
      Color.fromRGBO(222, 207, 181, 1),
    ),
    new Movie(
      "Resistance",
      59.0,
      "https://yts.mx/assets/images/movies/resistance_2020/background.jpg",
      "https://yts.mx/assets/images/movies/resistance_2020/medium-cover.jpg",
      "Jonathan Jakubowicz",
      2020,
      ['Biography', 'Drama', 'History', 'War'],
      120,
      "PG-13",
      "The story of a group of Jewish Boy Scouts who worked with the French Resistance to save the lives of ten thousand orphans during World War II.",
      Color.fromRGBO(144, 83, 50, 1),
    ),
    new Movie(
      "Uncorked",
      62.0,
      "https://yts.mx/assets/images/movies/uncorked_2020/background.jpg",
      "https://yts.mx/assets/images/movies/uncorked_2020/medium-cover.jpg",
      "Prentice Penny",
      2020,
      ['Drama'],
      104,
      "PG-13",
      "Elijah must balance his dream of becoming a master sommelier with his father's expectations that he carry on the family's Memphis BBQ joint.",
      Color.fromRGBO(111, 69, 124, 1),
    ),
    new Movie(
      "Deported",
      37.0,
      "https://yts.mx/assets/images/movies/deported_2020/background.jpg",
      "https://yts.mx/assets/images/movies/deported_2020/medium-cover.jpg",
      "Tyler Spindel",
      2020,
      ['Comedy'],
      90,
      "PG-13",
      "When his new girlfriend gets deported on a technicality, Ross hires a fake husband to get her back into the country because he's not ready to commit to marriage.",
      Color.fromRGBO(218, 187, 175, 1),
    ),
    new Movie(
      "10 Things We Should Do Before We Break Up",
      50.0,
      "https://yts.mx/assets/images/movies/10_things_we_should_do_before_we_break_up_2020/background.jpg",
      "https://yts.mx/assets/images/movies/10_things_we_should_do_before_we_break_up_2020/medium-cover.jpg",
      "Galt Niederhoffer",
      2020,
      ['Romance'],
      74,
      "PG-13",
      "After Abigail, a single mom of two, becomes pregnant following a one-night stand with Ben, the unlikely pair try to make a go of it.",
      Color.fromRGBO(222, 146, 56, 1),
    ),
    new Movie(
      "I Still Believe",
      64.0,
      "https://yts.mx/assets/images/movies/i_still_believe_2020/background.jpg",
      "https://yts.mx/assets/images/movies/i_still_believe_2020/medium-cover.jpg",
      "Jon Erwin",
      2020,
      ['Drama', 'Music', 'Romance'],
      116,
      "PG-13",
      "The true-life story of Christian music star Jeremy Camp and his journey of love and loss that looks to prove there is always hope.",
      Color.fromRGBO(161, 100, 78, 1),
    ),
  ];

  static Movie getMovie(int id) {
    for (Movie m in _allMovies) {
      if (m.getId() == id) {
        return m;
      }
    }
    return null;
  }

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

  static List<int> getSeatCart() {
    return _seatChart;
  }

  static void addTicket(Ticket ticket) {
    _tickets.insert(0, ticket);
  }

  static List<Cinema> loadCinemas() {
    return _cinemas;
  }

  static List<Cinema> searchCinema(String str) {
    List<Cinema> searchResult = [];

    for (Cinema c in _cinemas) {
      if (c.getName().contains(str)) {
        searchResult.add(c);
      }
    }

    return searchResult;
  }

  static String addressFromName(String name) {
    for (Cinema c in _cinemas) {
      if (c.getName().toLowerCase().contains(name.toLowerCase())) {
        return c.getAddress();
      }
    }
    return "";
  }

  static List<Movie> searchMovie(String str) {
    List<Movie> searchResult = [];

    for (Movie m in _allMovies) {
      if (m.getName().toLowerCase().contains(str.toLowerCase())) {
        searchResult.add(m);
      }
    }

    return searchResult;
  }

  static Cinema getCinemaByID(int id) {
    for (Cinema c in _cinemas) {
      if (c.getID() == id) {
        return c;
      }
    }
    return null;
  }

  static List<Movie> getCinemaMovies(int id) {
    List<Movie> res = [];
    Cinema c = getCinemaByID(id);

    if (c != null) {
      for (Movie m in _allMovies) {
        if (c.getMovies().contains(m.getId())) {
          res.add(m);
        }
      }
      return res;
    }
    return null;
  }

  static List<Review> getReviewsFrom(String username) {
    List<Review> res = [];

    for (Movie m in _allMovies) {
      for (Review r in m.getReviews()) {
        if (identical(r.getUsername(), username)) {
          res.add(r);
        }
      }
    }

    return res;
  }

  static bool removeReview(String un, Review revies) {
    for (Movie m in _allMovies) {
      for (Review r in m.getReviews()) {
        if (identical(r.getReview(), revies.getReview()) && r.getRating() == revies.getRating()) {
          m.deleteReview(r);
        }
      }
    }
  }




}
