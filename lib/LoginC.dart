import 'package:assignment1/Reg.dart';
import 'package:get/get.dart';

class LoginC extends GetxController{
  loginMessageShow() => print('Pressed Login');
  regMessageShow() => print('Pressed Register');
  getToRegPage() => Get.to(Reg());
}