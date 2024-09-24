import 'package:flutter/material.dart';
// Screens
import 'package:movie_watchlist_app/screens/home.dart';
import 'package:movie_watchlist_app/screens/movie/reviews.dart';
import 'package:movie_watchlist_app/screens/user/watchlist.dart';

//Components
import 'components/header.dart';
import 'components/sideBar.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(brightness: Brightness.dark),
    home: Layout(),
    debugShowCheckedModeBanner: false,
  ));
}

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    //final screenHeight = MediaQuery.of(context).size.height;

    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: Header(screenWidth: screenWidth),
            drawer: SideBar(),
            body: TabBarView(children: [
              Home(),
              Watchlist(),
              Reviews(),
            ])));
  }
}
