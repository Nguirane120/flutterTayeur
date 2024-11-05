import 'package:flutter/material.dart';
import 'package:tayeur/screens/welcomescreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          iconTheme: const IconThemeData(color: Colors.white),
          appBarTheme: const AppBarTheme(
              centerTitle: true,
              backgroundColor: Color(0xFF0C5E69),
              titleTextStyle: TextStyle(color: Colors.white, fontSize: 20)),
          primaryColor: const Color(0xFF0C5E69),
          hintColor: const Color(0xFFD1C000),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            shape: CircleBorder(),
            backgroundColor: Color(0xFFD1C000),
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Color(0xFF0C5E69),
            selectedItemColor: Color(0xFFD1C000),
            unselectedItemColor: Colors.white,
          ),
        ),
        home: Welcomescreen());
  }
}
