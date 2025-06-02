import 'dart:async';

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:grocerystore/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return OnBoarding();
          },
        ),
      );
    });
  }

  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF53B175),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/Group.png"),
          SizedBox(width: 16),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              DefaultTextStyle(
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  letterSpacing: 4.0,
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'nector',
                      speed: Duration(milliseconds: 200),
                    ),
                  ],

                  repeatForever: false,
                  totalRepeatCount: 1,
                ),
              ),

              SizedBox(height: 8),
              DefaultTextStyle(
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  letterSpacing: 4.0,
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'online grocereit',
                      speed: Duration(milliseconds: 100),
                    ),
                  ],

                  repeatForever: false,
                  totalRepeatCount: 1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
