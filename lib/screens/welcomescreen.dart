import 'package:flutter/material.dart';
import 'package:tayeur/screens/homescreen.dart';

class Welcomescreen extends StatefulWidget {
  const Welcomescreen({super.key});

  @override
  State<Welcomescreen> createState() => _WelcomescreenState();
}

class _WelcomescreenState extends State<Welcomescreen>  with SingleTickerProviderStateMixin {
    late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    )..forward();

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              opacity: 0.5,
              image: AssetImage("images/tayeur.jpg"),
              fit: BoxFit.cover),
        ),
        child: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return CircularProgressIndicator(
              value: _controller.value, 
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFD1C000)),
              strokeWidth: 6.0,
            );
          },
        ),
      ),
      ),
    );
  }
}
