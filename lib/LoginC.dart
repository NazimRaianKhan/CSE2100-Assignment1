import 'package:assignment1/Reg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginC extends GetxController{
  loginMessageShow() => print('Pressed Login');
  regMessageShow() => print('Pressed Register');
  getToRegPage() => Get.to(
      const Reg(),
      transition: Transition.downToUp,
      duration: Durations.long1,
  );
}