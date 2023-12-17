import 'package:flutter/material.dart';

ValueNotifier<int> indexchangenotifier = ValueNotifier(0);

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexchangenotifier,
      builder: (context, newIndex, _) {
        return BottomNavigationBar(
            currentIndex: newIndex,
            onTap: (Index) => indexchangenotifier.value = Index,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.explore), label: 'All Songs'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.playlist_add), label: 'PlayList'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Settings'),
            ]);
      },
    );
  }
}
