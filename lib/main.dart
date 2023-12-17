import 'package:beat_box_music_player/screen/home.dart';
import 'package:beat_box_music_player/screen/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // useMaterial3: true,
        canvasColor: Colors.black,
        scaffoldBackgroundColor: const Color.fromARGB(255, 221, 216, 216),
      ),
      home: MainScreen(),
    );
  }
}
