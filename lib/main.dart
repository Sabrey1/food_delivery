import 'package:flutter/material.dart';
import 'package:food_order/config/supabase_config.dart';
import 'package:food_order/controllers/navigation_controller.dart';
import 'package:food_order/routes/app_route.dart';
import 'package:food_order/routes/app_screen.dart';
import 'package:get/get.dart';
import 'package:flutter/gestures.dart'; 

Future<void> main() async {

  await SupabaseConfig.initialize();

  Get.put(NavigationController());
  runApp(const MyApp());
}

class _CustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    PointerDeviceKind.trackpad,
  };
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      scrollBehavior: _CustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.splashScreen,
      getPages: AppScreen.pages,
      
    );
  }
}