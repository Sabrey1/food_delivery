import 'package:get/get.dart';

class WidgetTreeAdminController extends GetxController {
  void onLogout() {
    Get.offAllNamed("/login");
  }
}