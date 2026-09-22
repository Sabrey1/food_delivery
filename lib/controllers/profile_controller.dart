import 'package:food_order/routes/app_route.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController{
  void onLogout(){
    Get.offAllNamed(AppRoute.login);
  }
}