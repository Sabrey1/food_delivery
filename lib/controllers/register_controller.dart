import 'package:food_order/routes/app_route.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController{
  void onRegisterAccount(){
    Get.offAllNamed(AppRoute.login);
  }

  void onLoginAccount(){
    Get.offAllNamed(AppRoute.login);
  }
}