import 'package:flutter/material.dart';
// Components
import 'package:movie_watchlist_app/components/review.dart';

class Reviews extends StatelessWidget {
  const Reviews ({super.key});

  @override
  Widget build(BuildContext context) {

    return Center(
        child: Review()
    );
  }
}