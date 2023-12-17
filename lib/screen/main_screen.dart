import 'package:beat_box_music_player/screen/all_songs.dart';
import 'package:beat_box_music_player/screen/home.dart';
import 'package:beat_box_music_player/screen/playlist.dart';
import 'package:beat_box_music_player/screen/settings.dart';
import 'package:beat_box_music_player/screen/widgets/bottom_appbar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final screens = [
    const HomePage(),
    const All_songs(),
    const PlayListScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ValueListenableBuilder(
        valueListenable: indexchangenotifier,
        builder: (BuildContext context, int index, _) => screens[index],
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
