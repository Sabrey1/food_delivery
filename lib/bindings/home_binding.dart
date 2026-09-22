import 'package:food_order/controllers/home_controller.dart';
import 'package:food_order/controllers/product_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    // Get.lazyPut<ProductController>(() => ProductController());
  }
}