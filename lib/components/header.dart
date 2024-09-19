import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget{
  final double screenWidth;

  const Header({super.key, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.menu),
        //t color: const Color(),
        onPressed: () {},
    ),
      title: const Text('Meu Aplicativo'),
      bottom: const TabBar(
          tabs: <Widget>[
            Tab(text: 'Catálogo'),
            Tab(text: 'Reviews'),
            Tab(text: 'Watchlist'),
          ]
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + kTextTabBarHeight);
}
