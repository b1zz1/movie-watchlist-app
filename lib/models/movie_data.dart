class MovieData {
  static List<Map<String, dynamic>> movieDetails = [
    {
      "title": "Grown Ups",
      "year": "2010",
      "rating": "A12",
      "duration": "1h42min",
      "actors":
          "Adam Sandler, Chris Rock, David Spade, Kevin James, Rob Schneider",
      "directors": "Dennis Dugan",
      "description":
          "In 1978, five 12-year-olds win a CYO basketball championship, and 30 years later they reunite for their coach's funeral. The friends, now adults, rent a lake house to spend the weekend with their families and catch up.",
      "isWatched": false,
      "bannerPath": './assets/images/movie_banners/movie0.jpg',
    },
    {
      "title": "Colombiana",
      "year": "2011",
      "rating": "A14",
      "duration": "1h48min",
      "actors": "Zoe Saldana, Cliff Curtis, Michael Vartan, Lennie James",
      "directors": "Olivier Megaton",
      "description":
          "Cataleya, a young girl in Bogotá, Colombia, witnesses her parents' murder by a drug lord in 1992. She is taken in by her Chicago gangster uncle, Emilio, and grows up to become a professional assassin. Cataleya seeks revenge on the mobster responsible for her parents' death.",
      "isWatched": true,
      "bannerPath": './assets/images/movie_banners/movie1.jpg',
    },
    {
      "title": "Five Feet Apart",
      "year": "2019",
      "rating": "12",
      "duration": "1h57min",
      "actors": "Haley Lu Richardson, Cole Sprouse, Moises Arias",
      "directors": "Justin Baldoni",
      "description":
          "Stella is a 17-year-old patient waiting for a lung transplant, while Will is a young artist who has a deadly bacteria. They begin a friendship and flirtation, despite the rules that they must stay at least six feet apart.",
      "isWatched": false,
      "bannerPath": './assets/images/movie_banners/movie2.jpg',
    },
    {
      "title": "Fast&Furious: Tokyo Drift",
      "year": "2006",
      "rating": "14",
      "duration": "1h44min",
      "actors": "Haley Lu Richardson, Cole Sprouse, Moises Arias",
      "directors": "Justin Baldoni",
      "description":
          "Sean Boswell, an American teenager with a history of illegal street racing, moves to Tokyo to live with his father to avoid jail time. There, he befriends Twinkie, a military brat who introduces him to the world of drift racing. Sean falls in love with the sport and with a Japanese girl named Neela, who is involved with the villain, D.K.",
      "isWatched": true,
      "bannerPath": './assets/images/movie_banners/movie3.jpg',
    },
  ];

  static void updateIsWatched(int index, bool newValue) {
    movieDetails[index]['isWatched'] = newValue;
  }
}
