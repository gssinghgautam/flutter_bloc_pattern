import '../resources/movie_api_provider.dart';
import '../models/item_model.dart';

class Repository {
  final MovieApiProvider _movieApiProvider = MovieApiProvider();

  Future<ItemModel> fetchAllMovies() => _movieApiProvider.fetchMovieList();
}
