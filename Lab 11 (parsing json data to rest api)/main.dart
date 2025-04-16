import 'package:flutter/material.dart';
import 'package:resetapi/data_screen.dart'; // Assuming this is the correct import for DataScreen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hide the debug banner
      title: 'Flutter REST API Demo',    // Set the app's title
      theme: ThemeData(
        primarySwatch: Colors.blue,      // Set the primary color for the app
      ),
      home: DataScreen(),                // Set DataScreen as the home screen
    );
  }
}
