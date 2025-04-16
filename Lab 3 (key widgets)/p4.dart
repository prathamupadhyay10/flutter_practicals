import 'package:flutter/material.dart';

class P4 extends StatelessWidget {
  const P4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('P4'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.orange,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Floating action button pressed'),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Text button pressed'),
                    ),
                  );
                },
                child: const Text(
                  'Text Button',
                  style: TextStyle(color: Colors.yellow),
                ),
              ),
              IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Icon button pressed'),
                    ),
                  );
                },
                icon: const Icon(Icons.home),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
