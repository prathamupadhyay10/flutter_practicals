import 'package:flutter/material.dart';
import 'package:resetapi/data_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  // Disables the debug banner
      title: 'Flutter REST API Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,  // Sets primary theme color to blue
      ),
      home: DataScreen(),  // Main screen of the app
    );
  }
}
