import 'package:flutter/material.dart';
import './ui/movie_list.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BLOC Pattern",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.lightBlue, accentColor: Colors.lightBlueAccent),
      home: MoviesList(),
    );
  }
}
