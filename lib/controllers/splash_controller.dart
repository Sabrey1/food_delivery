import 'package:food_order/controllers/app_controller.dart';
import 'package:food_order/routes/app_route.dart';
import 'package:get/get.dart';
class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    _route();
  }

  void _route() async {
    Get.put(AppController(), permanent: true);
    await Future.delayed(Duration(seconds: 1));
    // Get.offAllNamed(AppRoute.home);
    Get.offAllNamed(AppRoute.home);
  }
}