import 'package:assignment1/Login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegC extends GetxController{
  regMessageShow() => print('Pressed sign up');
  getToLoginPage() => Get.offAll(
    const Login(),
    transition: Transition.rightToLeft,
    duration: Durations.extralong1,
  );
}

