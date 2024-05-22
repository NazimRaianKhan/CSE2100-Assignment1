import 'package:assignment1/Login.dart';
import 'package:assignment1/Reg.dart';
import 'package:assignment1/Splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: Splashscreen(),
    );
  }
}