import 'package:flutter/material.dart';
import './step_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Filmes',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: StepForm(),
    );
  }
}
