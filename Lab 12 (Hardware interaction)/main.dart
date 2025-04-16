import 'package:flutter/material.dart';
import 'home_screen.dart';  // Make sure you have the home_screen.dart file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Text To Speech",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomeScreen(),  // Ensure you have the HomeScreen widget implemented
    );
  }
}
