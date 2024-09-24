import 'package:flutter/material.dart';

import '../../components/review.dart';

UserData myUser = UserData(
  picture: './assets/images/avatars/3d_avatar_24.jpg',
  name: 'Eduardo Martins',
);

MovieData myMovie = MovieData(
  title: 'Pink Floyd: The Wall',
  release: '1982',
  poster: './assets/images/movie_banners/Pink_Floyd_–_The_Wall.jpg',
);

ReviewData myReview = ReviewData(
  score: 5,
  date: '7 de setembro de 2024',
  content: 'Filmaço viu, Roger Waters sabia o que fazia',
);

class Reviews extends StatelessWidget {
  const Reviews({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 5,
        itemBuilder: (BuildContext, int index) {
          return Review(user: myUser, movie: myMovie, review: myReview);
        });
  }
}
