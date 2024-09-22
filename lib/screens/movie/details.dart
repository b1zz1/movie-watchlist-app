import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  final String bannerPath;
  final String movieTitle;
  final String movieYear;
  final String movieRating;
  final String movieDuration;
  final String actors;
  final String directors;
  final String description;
  final bool isWatched;
  final Function(bool) onIsWatchedChanged;

  const Details({
    super.key,
    required this.bannerPath,
    required this.movieTitle,
    required this.movieYear,
    required this.movieRating,
    required this.movieDuration,
    required this.actors,
    required this.directors,
    required this.description,
    required this.isWatched,
    required this.onIsWatchedChanged,
  });

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  late bool _isWatched;

  @override
  void initState() {
    super.initState();
    _isWatched = widget.isWatched;
  }

  void _toggleIsWatched() {
    setState(() {
      _isWatched = !_isWatched;
    });
    // Atualiza o estado do filme na tela anterior
    widget.onIsWatchedChanged(_isWatched);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    widget.bannerPath,
                    fit: BoxFit.cover,
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.6,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.movieTitle,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            widget.movieYear,
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            padding: const EdgeInsets.all(4),
                            color: Colors.grey,
                            child: Text(
                              widget.movieRating,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            widget.movieDuration,
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(
                          _isWatched ? Icons.visibility : Icons.visibility_off,
                          size: 30,
                          color: _isWatched ? Colors.green : Colors.red,
                        ),
                        onPressed: _toggleIsWatched,
                      ),
                      Text(_isWatched ? "Watched" : "Not Watched"),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Text(
                widget.description.isNotEmpty
                    ? widget.description
                    : "No description available.",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 20),

              Text(
                "Main actors:",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.actors.isNotEmpty
                    ? widget.actors
                    : "No information about the actors available.",
                style: TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 20),

              Text(
                "Director:",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.directors.isNotEmpty
                    ? widget.directors
                    : "No information about the directors available.",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
