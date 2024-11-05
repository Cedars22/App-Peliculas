class Peliculas {
  List<Pelicula> items = [];

  Peliculas();

  Peliculas.fromJsonList(List<dynamic> jsonList) {
    for (var item in jsonList) {
      final pelicula = new Pelicula.fromJsonMap(item);
      items.add(pelicula);
    }
  }
}

class Pelicula {
  String uniqueId;

  double popularity;
  int voteCount;
  bool video;
  String posterPath;
  int id;
  bool adult;
  String backdropPath;
  String originalLanguage;
  String originalTitle;
  List<int> genreIds;
  String title;
  double voteAverage;
  String overview;
  String releaseDate;

  Pelicula({
    required this.popularity,
    required this.voteCount,
    required this.video,
    required this.posterPath,
    required this.id,
    required this.adult,
    required this.backdropPath,
    required this.originalLanguage,
    required this.originalTitle,
    required this.genreIds,
    required this.title,
    required this.voteAverage,
    required this.overview,
    required this.releaseDate,
  }) : uniqueId = '';

  Pelicula.fromJsonMap(Map<String, dynamic> json)
      : popularity = json['popularity'] / 1,
        voteCount = json['vote_count'],
        video = json['video'],
        posterPath = json['poster_path'],
        id = json['id'],
        adult = json['adult'],
        backdropPath = json['backdrop_path'],
        originalLanguage = json['original_language'],
        originalTitle = json['original_title'],
        genreIds = json['genre_ids'].cast<int>(),
        title = json['title'],
        voteAverage = json['vote_average'] / 1,
        overview = json['overview'],
        releaseDate = json['release_date'],
        uniqueId = '';

  getPosterImg() {
    if (posterPath == null) {
      return 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS6V_R6WMnHzN5bpexR-vQ1tNickx9phBGTHA&usqp=CAU';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$posterPath';
    }
  }

// 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS6V_R6WMnHzN5bpexR-vQ1tNickx9phBGTHA&usqp=CAU'

  getBackgroundImg() {
    if (posterPath == null) {
      return 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS6V_R6WMnHzN5bpexR-vQ1tNickx9phBGTHA&usqp=CAU';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$backdropPath';
    }
  }
}
