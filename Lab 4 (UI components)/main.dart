import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Practical - 5"),
          backgroundColor: Colors.yellowAccent,
          foregroundColor: Colors.black87,
        ),
        body: const LoginPage(),
      ),
    ),
  );
}
