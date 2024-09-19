import 'package:flutter/material.dart';
import 'package:movie_watchlist_app/components/header.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    //final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: Header(screenWidth: screenWidth),
        body: Center(
          child: Text('Home Page')
        )
    );
  }
}