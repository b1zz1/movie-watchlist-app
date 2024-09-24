import 'package:flutter/material.dart';
import 'package:movie_watchlist_app/models/movie_data.dart';
import 'package:movie_watchlist_app/screens/movie/details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _updateMovieStatus(int index, bool newValue) {
    setState(() {
      MovieData.updateIsWatched(index, newValue); // Atualiza estado do filme
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 0.7,
          ),
          itemCount: MovieData.movieDetails.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Navega para a tela de detalhes ao clicar em um card
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Details(
                      bannerPath: MovieData.movieDetails[index]['bannerPath'],
                      movieTitle: MovieData.movieDetails[index]['title'],
                      movieYear: MovieData.movieDetails[index]['year'],
                      movieRating: MovieData.movieDetails[index]['rating'],
                      movieDuration: MovieData.movieDetails[index]['duration'],
                      actors: MovieData.movieDetails[index]['actors'] ?? '',
                      directors:
                          MovieData.movieDetails[index]['directors'] ?? '',
                      description:
                          MovieData.movieDetails[index]['description'] ?? '',
                      isWatched: MovieData.movieDetails[index]['isWatched'],
                      onIsWatchedChanged: (newValue) {
                        _updateMovieStatus(
                            index, newValue); // Atualiza status do filme
                      },
                    ),
                  ),
                );
              },
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      MovieData.movieDetails[index]['bannerPath'],
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
                        MovieData.movieDetails[index]['isWatched']
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
