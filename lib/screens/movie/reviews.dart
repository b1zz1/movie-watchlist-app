import 'package:flutter/material.dart';

import '../../components/review.dart';

class Reviews extends StatelessWidget {
  const Reviews({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 5,
        itemBuilder: (BuildContext, int index) {
          return Review();
        });
  }
}
