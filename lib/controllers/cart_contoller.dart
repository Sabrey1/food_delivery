import 'package:food_order/routes/app_route.dart';
import 'package:get/get.dart';

class CartContoller extends GetxController{
  void onCheckOut(){
    Get.toNamed(AppRoute.checkOut);
  }
}