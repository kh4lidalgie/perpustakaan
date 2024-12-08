class MovieModel {
  int id;
  String title;
  double? voteAverage;
  String posterPath;
  MovieModel({
    required this.id,
    required this.title,
    required this.posterPath,
    this.voteAverage,
  });
}
