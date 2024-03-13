import 'package:flutter/material.dart';
import 'package:flutter_application_1/MainPage.dart';
import 'package:flutter_application_1/SecondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      routes: {
        '/Main':(context) => const MainPage(),
        '/Second':(context) => SecondPage()
      },
      initialRoute: '/Main',
    );
  }
}

