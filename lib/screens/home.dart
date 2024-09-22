import 'package:flutter/material.dart';
import 'package:movie_watchlist_app/screens/movie/details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> movieBanners = [
    './assets/images/movie_banners/movie0.jpg',
    './assets/images/movie_banners/movie1.png',
    './assets/images/movie_banners/movie2.jpg',
  ];

  final List<Map<String, dynamic>> movieDetails = [
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
      "isWatched": true,
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
      "isWatched": false,
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
      "isWatched": true,
    },
  ];

  void _updateIsWatched(int index, bool newValue) {
    setState(() {
      movieDetails[index]['isWatched'] = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 0.7,
          ),
          itemCount: movieBanners.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Details(
                      bannerPath: movieBanners[index],
                      movieTitle: movieDetails[index]['title'],
                      movieYear: movieDetails[index]['year'],
                      movieRating: movieDetails[index]['rating'],
                      movieDuration: movieDetails[index]['duration'],
                      actors: movieDetails[index]['actors'] ?? '',
                      directors: movieDetails[index]['directors'] ?? '',
                      description: movieDetails[index]['description'] ?? '',
                      isWatched: movieDetails[index]['isWatched'],
                      onIsWatchedChanged: (newValue) {
                        _updateIsWatched(index, newValue);
                      },
                    ),
                  ),
                );
              },
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: Image.asset(
                      movieBanners[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 8,
                    right: 8,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.all(4),
                      child: Icon(
                        movieDetails[index]['isWatched']
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
