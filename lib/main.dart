import 'package:flutter/material.dart';
import 'package:movie_zone/screens/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:movie_zone/screens/movie_details.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MovieZone());
}
class MovieZone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/movie_details': (context) => MovieDetails()
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      home: Home()  ,
    );
  }
}