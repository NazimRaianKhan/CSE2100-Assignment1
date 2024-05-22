import 'package:assignment1/Login.dart';
import 'package:get/get.dart';

class RegC extends GetxController{
  regMessageShow() => print('Pressed sign up');
  getToLoginPage() => Get.offAll(Login());
}

