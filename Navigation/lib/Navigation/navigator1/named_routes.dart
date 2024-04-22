import 'package:flutter/material.dart';
import 'package:lab3/Navigation/navigator1/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      initialRoute: '/',
      routes: {
        '/':(context) => ScreenOne(),
        '/second': (context) => ScreenTwo()
      },
    );
  }
}