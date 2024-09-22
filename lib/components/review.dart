import 'package:flutter/material.dart';
import 'package:movie_watchlist_app/components/starRating.dart';

class Review extends StatelessWidget {
  final user = './assets/images/avatars/3d_avatar_24.jpg';
  final banner = './assets/images/movie_banners/Pink_Floyd_–_The_Wall.jpg';

  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            // Fit the children
            crossAxisAlignment: CrossAxisAlignment.start,
            // Align everything to the start
            children: <Widget>[
              IntrinsicHeight(
                // Ensure Row fits its content
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ListTile(
                            leading: CircleAvatar(
                                backgroundImage: AssetImage(user), radius: 16),
                            title: Text('Eduardo Martins',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            contentPadding: EdgeInsets.zero,
                            horizontalTitleGap: 10,
                            minVerticalPadding: 0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 4),
                            child: Row(
                              children: const <Widget>[
                                Flexible(
                                  child: Text(
                                    'Pink Floyd: The Wall',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text('1982', style: TextStyle(fontSize: 16)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: <Widget>[
                                StarRating(rating: 5),
                                SizedBox(width: 10),
                                Icon(Icons.favorite, size: 16)
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 0),
                            child: Row(
                              children: const <Widget>[
                                Icon(Icons.calendar_today_rounded, size: 12),
                                SizedBox(width: 6),
                                Text('7 de setembro de 2024',
                                    style: TextStyle(fontSize: 12)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    ClipRRect(
                      child: Container(
                        constraints: BoxConstraints(
                          maxHeight: 150.0, // Set max height for the image
                          maxWidth: 100.0, // Set max width for the image
                        ),
                        child: Image.asset(
                          banner,
                          fit: BoxFit
                              .cover, // Scale the image to fit within constraints
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Flexible(
                  child: Text(
                    'Sed ut perspiciatis unde omnis iste natus error sit '
                    'voluptatem accusantium doloremque laudantium. Fly me'
                    ' to the moon and let me live among the stars',
                    style: TextStyle(
                        fontSize: 14), // Add smaller font for review text
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
