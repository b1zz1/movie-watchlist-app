import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final double screenWidth;

  const Header({super.key, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.menu),
        //t color: const Color(),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        }
    ),
      title: const Text('Watchlist App'),
      bottom: const TabBar(
          tabs: <Widget>[
            Tab(text: 'Recommended'),
            Tab(text: 'Watchlist'),
            Tab(text: 'Reviews'),
          ]
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + kTextTabBarHeight);
}
