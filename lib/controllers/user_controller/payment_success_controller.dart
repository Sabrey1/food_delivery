import 'package:food_order/routes/app_route.dart';
import 'package:get/get.dart';

class PaymentSuccessController extends GetxController{
  void onBackToHome(){
    Get.offAllNamed(AppRoute.home);
  }
}