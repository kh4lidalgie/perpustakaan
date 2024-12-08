import 'package:crud_perpus/models/movie.dart';

class MovieController {
  final List<MovieModel> movie = [
    MovieModel(
      id: 1,
      title: 'Inception',
      voteAverage: 4.0,
      posterPath: "assets/img1.jpg",
    ),
    MovieModel(
      id: 2,
      title: 'The Dark Knight',
      voteAverage: 9.0,
      posterPath: "assets/img2.jpg",
    ),
  ];
}
