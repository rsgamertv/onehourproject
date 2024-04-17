import 'package:flutter/material.dart';
import 'package:flutter_application_1/MainPage.dart';
import 'package:flutter_application_1/SecondPage.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlutterSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
            title: 'Flutter Sizer Example',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            routes: {
              '/MainPage':(context) => MainPage(),
              '/SecondPage':(context) => SecondPage()
            },
            initialRoute: '/SecondPage',
        );
      },
    );
  }
}


