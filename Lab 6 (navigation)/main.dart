import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Practical - 7"),
          foregroundColor: Colors.black87,
        ),
        body: const LoginPage(),
      ),
    ),
  );
}
