import 'package:flutter/material.dart';
import 'package:movie_watchlist_app/components/starRating.dart';

class UserData {
  final String picture;
  final String name;

  UserData({required this.picture, required this.name});
}

class MovieData {
  final String title;
  final String release;
  final String poster;

  MovieData({required this.title, required this.release, required this.poster});
}

class ReviewData {
  final double score;
  final String date;
  final String content;

  ReviewData({required this.score, required this.date, required this.content});
}

class Review extends StatefulWidget {
  final UserData user;
  final MovieData movie;
  final ReviewData review;

  const Review({
    super.key,
    required this.user,
    required this.movie,
    required this.review,
  });

  @override
  _ReviewState createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
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
                                backgroundImage:
                                    AssetImage(widget.user.picture),
                                radius: 16),
                            title: Text(widget.user.name,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            contentPadding: EdgeInsets.zero,
                            horizontalTitleGap: 10,
                            minVerticalPadding: 0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 4),
                            child: Row(
                              children: <Widget>[
                                Flexible(
                                  child: Text(
                                    widget.movie.title,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Text(widget.movie.release,
                                    style: const TextStyle(fontSize: 16)),
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
                              children: <Widget>[
                                const Icon(Icons.calendar_today_rounded,
                                    size: 12),
                                const SizedBox(width: 6),
                                Text(widget.review.date,
                                    style: const TextStyle(fontSize: 12)),
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
                          widget.movie.poster,
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
                    widget.review.content,
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
