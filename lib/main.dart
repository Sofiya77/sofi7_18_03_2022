import 'package:flutter/material.dart';
import 'package:sofi7/screens/les61/scrolling_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ScrollText(),
      ), // подключаем свои виджеты к home
    );
  }
}