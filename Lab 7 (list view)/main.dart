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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'List View',
            style: TextStyle(color: Colors.cyan),
          ),
        ),
        body: Center(
          child: Container(
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.android),
                  title: const Text('Android'),
                  subtitle: const Text(
                    "App Development",
                    style: TextStyle(color: Colors.green),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.javascript),
                  title: const Text('JavaScript'),
                  subtitle: const Text(
                    "Web Development",
                    style: TextStyle(color: Colors.yellow),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.css),
                  title: const Text('CSS'),
                  subtitle: const Text(
                    "Web Development",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.html),
                  title: const Text('HTML'),
                  subtitle: const Text(
                    "Web Development",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.apple),
                  title: const Text('Swift'),
                  subtitle: const Text(
                    "iOS Development",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
