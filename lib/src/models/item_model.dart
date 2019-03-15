class ItemModel {
  int _page;
  int _totalResults;
  int _totalPages;
  List<Results> _resultList = [];

  ItemModel.fromJson(Map<String, dynamic> parsedJson) {
    print(parsedJson['results'].length);
    _page = parsedJson['page'];
    _totalResults = parsedJson['total_results'];
    _totalPages = parsedJson['total_pages'];

    List<Results> temp = [];
    for (int i = 0; i < parsedJson['results'].length; i++) {
      Results _result = Results(parsedJson['results'][i]);
      temp.add(_result);
    }
    _resultList = temp;
  }

  int get page => _page;

  int get totalPages => _totalPages;

  int get totalResults => _totalResults;

  List<Results> get results => _resultList;
}

class Results {
  int _voteCount;
  int _id;
  bool _video;
  double _voteAverage;
  String _title;
  double _popularity;
  String _posterPath;
  String _originalLanguage;
  String _originalTitle;
  List<int> _genreIds = [];
  String _backdropPath;
  bool _adult;
  String _overview;
  String _releaseDate;

  Results(result) {
    _voteCount = result['vote_count'];
    _id = result['id'];
    _video = result['video'];
    _voteAverage = result['vote_average'];
    _title = result['title'];
    _popularity = result['popularity'];
    _posterPath = result['poster_path'];
    _originalLanguage = result['original_language'];
    _originalTitle = result['original_title'];
    for (int i = 0; i < result['genre_ids'].length; i++) {
      _genreIds.add(result['genre_ids'][i]);
    }
    _backdropPath = result['backdrop_path'];
    _adult = result['adult'];
    _overview = result['overview'];
    _releaseDate = result['release_date'];
  }

  int get voteCount => _voteCount;

  int get id => _id;

  bool get video => _video;

  double get voteAverage => _voteAverage;

  String get title => _title;

  double get popularity => _popularity;

  String get posterPath => _posterPath;

  String get originalLanguage => _originalLanguage;

  String get originalTitle => _originalTitle;

  List<int> get genresIds => _genreIds;

  String get backdropPath => _backdropPath;

  bool get adult => _adult;

  String get overview => _overview;

  String get releaseDate => _releaseDate;
}
