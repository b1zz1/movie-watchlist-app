import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget{
  final double screenWidth;

  const Header({super.key, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child:
        AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu),
            // color: const Color(),
            onPressed: () {},
          ),
          title: const Text('Meu Aplicativo'),
          bottom: const TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.cloud_outlined)),
                Tab(icon: Icon(Icons.beach_access_sharp)),
                Tab(icon: Icon(Icons.brightness_5_sharp)),
              ]
          ),
        ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + kTextTabBarHeight);
}
