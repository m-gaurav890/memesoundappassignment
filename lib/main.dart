import 'package:flutter/material.dart';
import 'flashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meme Sounds',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Use a sky blue color
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue, // Primary color for ColorScheme
          secondary: Colors.orange, // Fun secondary color
        ),
        brightness: Brightness.light,
        backgroundColor: Colors.lightBlue[100], // Light sky blue background
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.blue[800], // AppBar title color
            fontWeight: FontWeight.bold,
          ),
          bodyText1: TextStyle(color: Colors.blueGrey[800]), // General text color
        ),
        iconTheme: IconThemeData(color: Colors.orange), // Default icon color
        cardColor: Colors.white, // Card background color
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.blue, // Button color
            onPrimary: Colors.white, // Button text color
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.orange, // FAB color
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue[600], // AppBar background color
          foregroundColor: Colors.white, // AppBar text color
        ),
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
