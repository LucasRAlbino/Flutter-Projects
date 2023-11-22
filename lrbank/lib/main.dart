import 'package:flutter/material.dart';
import 'package:lrbank/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LRABank',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
