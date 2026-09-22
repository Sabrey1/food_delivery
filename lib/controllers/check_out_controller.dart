import 'package:food_order/routes/app_route.dart';
import 'package:get/get.dart';

class CheckOutController extends GetxController{
  void onComfirm(){
    Get.toNamed(AppRoute.paymentSuccess);
  }
}