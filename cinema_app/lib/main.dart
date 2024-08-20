import 'package:cinema_app/screens/ListFilms.dart';
import 'package:flutter/material.dart';
import 'package:cinema_app/screens/FilmDetails.dart';



void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Listfilms(),
     
    },
    debugShowCheckedModeBanner: false,
  ));
}


