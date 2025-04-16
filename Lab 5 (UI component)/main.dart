import 'package:flutter/material.dart';
import 'signup.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Practical - 6"),
          backgroundColor: Colors.red,
          foregroundColor: Colors.black87,
        ),
        body: const SignUpPage(),
      ),
    ),
  );
}
