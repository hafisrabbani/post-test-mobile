import 'package:flutter/material.dart';
import 'package:yt_short/page/pages.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MyApp(),
      ),
    );
  }
}
