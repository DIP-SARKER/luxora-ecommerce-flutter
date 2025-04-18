import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 4), (timer) {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 0, 255, 238),
                const Color.fromARGB(255, 116, 85, 210),
                const Color.fromARGB(255, 212, 2, 191),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              ColorizeAnimatedText(
                'L U X O R A',
                textStyle: const TextStyle(
                  fontSize: 60.0,
                  fontFamily: 'LondrinaSketch',
                  fontWeight: FontWeight.bold,
                ),
                colors: [
                  Colors.white,
                  Colors.blue,
                  Colors.yellow,
                  Colors.orange,
                  Colors.red,
                ],
                speed: const Duration(milliseconds: 1000),
              ),
            ],
            totalRepeatCount: 1,
            isRepeatingAnimation: false,
          ),
        ),
      ),
    );
  }
}
