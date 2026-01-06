import 'package:firechat/pages/discover_page.dart';
import 'package:firechat/pages/profile_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const DiscoverPage(),
    );
  }
}
