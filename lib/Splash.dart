
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:assignment1/Login.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Splashscreen extends StatelessWidget{
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnimatedSplashScreen(
      splash: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.assignment_sharp,
              size: 100,
            ),
            Text(
              'Assignment',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
      splashIconSize: 250,
      backgroundColor: Colors.cyanAccent,
      nextScreen: const Login(),
      duration: 2000,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.topToBottom,
    );
  }

}