import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget{
  final double screenWidth;

  const Header({super.key, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return AppBar(
     leading: IconButton(
        icon: const Icon(Icons.menu),
        // color: const Color(),
        onPressed: () {},
      )
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
