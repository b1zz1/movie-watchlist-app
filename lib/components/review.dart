import 'package:flutter/material.dart';
// Components
import 'package:movie_watchlist_app/components/starRating.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:<Widget>[
          const ListTile(
            leading: CircleAvatar(
                child: Text('EM', style: TextStyle(fontWeight: FontWeight.bold))
            ),
            title: Text('Eduardo Martins', style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
            )),
            contentPadding: EdgeInsets.zero,
            horizontalTitleGap: 10.0,
            minVerticalPadding: 0.0,
          ),
          const Row(
            children:<Widget>[
              Text('Pink Floyd: The Wall', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              )),
              SizedBox(width: 10.0), // Gap
              Text('1982', style: TextStyle(fontSize: 16))
            ],
          ),
          SizedBox(height: 4.0),
          Row(
            children: <Widget>[
              StarRating(rating: 5.0),
              SizedBox(width: 10.0), // Gap
              Icon(Icons.favorite, size: 16)
            ],
          ),
          SizedBox(height: 4.0),
          Text('Assistiu em 7 de setembro de 2024'),
          // Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam mollis malesuada tempus. Nulla vehicula hendrerit feugiat. Pellentesque et imperdiet arcu, sed sollicitudin lorem. Phasellus ac scelerisque dui. Quisque id pellentesque nisl. Suspendisse eros leo, pretium eu pellentesque ut, rhoncus vel enim. Suspendisse eu enim quis arcu ultricies bibendum vitae in arcu. Proin iaculis, velit non sagittis semper, lorem urna efficitur arcu, non placerat diam diam et ex. Ut lacinia est quis faucibus volutpat. Nunc pellentesque neque vitae tortor dapibus, quis suscipit mauris pretium. Nam at dapibus libero. Cras nec massa in velit maximus blandit. Ut consectetur semper magna sit amet aliquet. Nulla vel bibendum magna, vel mattis elit. Ut fringilla eros id imperdiet dapibus. Nam congue tortor in justo hendrerit, ac consectetur nisl tempus.')
        ],
      )
    );
  }
}