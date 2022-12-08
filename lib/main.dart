import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        buttonColor: Colors.red,
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.black
          )
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedLabelStyle: TextStyle(
            color: Colors.green
          ),
          unselectedLabelStyle: TextStyle(
            color: Colors.green
          )
        )
      ),

      home: HomeScreen(),
    );
  }
}

