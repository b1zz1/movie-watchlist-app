import 'package:flutter/material.dart';
import 'package:movie_watchlist_app/screens/home.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}
