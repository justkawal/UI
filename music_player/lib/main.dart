import 'package:flutter/material.dart';
import 'package:music_player/pages/music_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Music Player',
      debugShowCheckedModeBanner: false,
      home: MusicListPage(),
    );
  }
}
