import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final int starCount;
  final double rating;
  final double iconSize = 16;

  StarRating({super.key, this.starCount = 5, this.rating = .0});

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating) {
      icon = Icon(
          Icons.star_border,
          size: iconSize

      );
    }
    else if (index > rating - 1 && index < rating) {
      icon = Icon(
          Icons.star_half,
          size: iconSize
      );
    } else {
      icon = Icon(
          Icons.star,
          size: iconSize
      );
    }
    return InkResponse(
      onTap: () {},
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: List.generate(starCount, (index) => buildStar(context, index)));
  }
}