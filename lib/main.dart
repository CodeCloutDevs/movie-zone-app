import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:movie_zone/screens/contact.dart';
import 'package:movie_zone/screens/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:movie_zone/screens/movie_details.dart';
import 'package:movie_zone/screens/prices.dart';

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
        '/': (context) => AnimatedSplashScreen(
          duration: 3000,
          splashTransition: SplashTransition.fadeTransition,
          splash: Image(
            image: AssetImage('assets/images/icon.png'),
          ),
          nextScreen: Home(),
        ),
        '/movie_details': (context) => MovieDetails(),
        '/prices': (context) => Prices(),
        '/contact': (context) => Contact(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
    );
  }
}