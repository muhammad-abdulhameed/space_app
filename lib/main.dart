import 'package:flutter/material.dart';
import 'package:space_app/explore_screen.dart';
import 'package:space_app/home_screen.dart';
import 'package:space_app/planetDetails_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        HomeScreen.routeName:(context)=>HomeScreen(),
        ExploreScreen.routeName:(context)=>ExploreScreen(),
        PlanetDetailsScreen.routeName:(context)=>PlanetDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}