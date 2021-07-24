import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie_app/details.dart';
import 'package:movie_app/home.dart';
import 'package:movie_app/movieentry.dart';

void main()
{
  runApp(Movieentry());
}
class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("MOVIE APP"),
        ),
        body:Home(),

      ),
    );
  }
}
