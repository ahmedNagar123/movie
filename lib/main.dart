import 'package:flutter/material.dart';
import 'package:movie_app/screens/home_screen.dart';
import 'package:movie_app/screens/movies_detail_screen.dart';
import 'package:movie_app/screens/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        accentColor: Colors.black,
        primaryColor: Colors.white,
        // bottomAppBarColor: Colors.grey,
        backgroundColor: Color.fromRGBO(243, 245, 274, 2),
        buttonTheme: ButtonTheme.of(context).copyWith(
            buttonColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            textTheme: ButtonTextTheme.primary),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (ctx) => TabsScreen(),
        HomeScreen.routeName: (ctx) => HomeScreen(),
        MovieDetailsScreen.routeName: (ctx) => MovieDetailsScreen(),
      },
    );
  }
}
