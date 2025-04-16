import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final FlutterTts flutterTts = FlutterTts();
  final TextEditingController textController = TextEditingController();
  bool _isSpeaking = false;  // State to manage the speech status

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  Future<void> speak(String text) async {
    if (text.isEmpty) return;

    setState(() {
      _isSpeaking = true;
    });

    await flutterTts.setLanguage('en-US');
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    try {
      await flutterTts.speak(text);
    } catch (e) {
      // Handle any errors that occur while speaking
      print('Error speaking: $e');
    }

    setState(() {
      _isSpeaking = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text To Speech"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: textController,
              decoration: const InputDecoration(
                hintText: 'Enter Text',
                border: OutlineInputBorder(),
              ),
              maxLines: 4,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                speak(textController.text);
              },
              child: _isSpeaking
                  ? const CircularProgressIndicator() // Show loading indicator while speaking
                  : const Text('Speak'),
            ),
          ],
        ),
      ),
    );
  }
}
