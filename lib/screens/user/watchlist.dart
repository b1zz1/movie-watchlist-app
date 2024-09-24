import 'package:flutter/material.dart';
import 'package:movie_watchlist_app/models/movie_data.dart';
import 'package:movie_watchlist_app/screens/movie/details.dart';

class Watchlist extends StatefulWidget {
  const Watchlist({super.key});

  @override
  _WatchlistState createState() => _WatchlistState();
}

class _WatchlistState extends State<Watchlist> {
  void _updateWatchlist(int index, bool newValue) {
    // Filtra a lista de filmes assistidos
    final watchedMovies =
        MovieData.movieDetails.where((movie) => movie['isWatched']).toList();

    // Encontra o índice correto do filme na lista principal
    int mainIndex = MovieData.movieDetails
        .indexWhere((movie) => movie['title'] == watchedMovies[index]['title']);

    // Certifique-se de que o filme foi encontrado na lista original
    if (mainIndex != -1) {
      setState(() {
        // Atualiza o status do filme na lista principal
        MovieData.updateIsWatched(mainIndex, newValue);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Filtra os filmes que foram assistidos
    final watchedMovies =
        MovieData.movieDetails.where((movie) => movie['isWatched']).toList();

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
          itemCount: watchedMovies.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Navega para a tela de detalhes ao clicar em um card
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Details(
                      bannerPath: watchedMovies[index]['bannerPath'],
                      movieTitle: watchedMovies[index]['title'],
                      movieYear: watchedMovies[index]['year'],
                      movieRating: watchedMovies[index]['rating'],
                      movieDuration: watchedMovies[index]['duration'],
                      actors: watchedMovies[index]['actors'] ?? '',
                      directors: watchedMovies[index]['directors'] ?? '',
                      description: watchedMovies[index]['description'] ?? '',
                      isWatched: watchedMovies[index]['isWatched'],
                      onIsWatchedChanged: (newValue) {
                        _updateWatchlist(
                            index, newValue); // Atualiza status do filme
                      },
                    ),
                  ),
                ).then((_) {
                  // Atualiza a lista de filmes ao retornar da tela de detalhes
                  setState(() {});
                });
              },
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      watchedMovies[index]['bannerPath'],
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
                      child: const Icon(
                        Icons.visibility,
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
