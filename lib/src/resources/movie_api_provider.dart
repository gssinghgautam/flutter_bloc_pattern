import 'dart:convert';

import 'package:http/http.dart' show Client;
import 'dart:async';
import '../models/item_model.dart';

class MovieApiProvider {
  Client client = new Client();
  final _apiKey = "2409202286f08e6e7503cee0f7e52b9e";

  Future<ItemModel> fetchMovieList() async {
    final response = await client
        .get("http://api.themoviedb.org/3/movie/popular?api_key=${_apiKey}");
    print(response.body.toString());
    if (response.statusCode == 200) {
      //If the call to the server was successfull, parse the json
      return ItemModel.fromJson(json.decode(response.body));
    } else {
      // If the call to the serve was unsuccessfull, then throw an exception
      throw Exception('Failed to load movie list');
    }
  }
}
