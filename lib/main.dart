import 'package:unit7_assignment_navarra/screens/about_me.dart';
import 'package:unit7_assignment_navarra/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      // Create the routes here
      initialRoute: '/',
      routes: {
        '/': (BuildContext ctx) =>
            HomScreen(), // Navigates route to the Home screen.
        '/aboutme': (BuildContext ctx) =>
            About_Me(), // Navigates route to the  About_Me page.
      },
    );
  }
}
