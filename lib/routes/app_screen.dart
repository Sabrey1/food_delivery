// import 'package:epos_app/bindings/getting_start_binding.dart';

import 'package:food_order/bindings/home_binding.dart';
import 'package:food_order/routes/app_route.dart';
import 'package:food_order/screens/admin_screens/home/admin_home_screen.dart';
import 'package:food_order/screens/admin_screens/widget_tree_admin_screen.dart';
import 'package:food_order/screens/auth/login_screen.dart';
import 'package:food_order/screens/auth/register_screen.dart';
import 'package:food_order/screens/customer_screen/cart/check_out_screen.dart';
import 'package:food_order/screens/customer_screen/cart/payment_success_screen.dart';
import 'package:food_order/screens/customer_screen/widget_tree_screen.dart';
import 'package:food_order/screens/splash_screen.dart';
import 'package:food_order/screens/customer_screen/product/product_detail_screen.dart';

import 'package:get/get.dart';

class AppScreen {
  static final pages = [
    GetPage(
      name: AppRoute.splashScreen,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: AppRoute.home,
      page: () => WidgetTreeScreen(
        title: 'GourmentGo',
      ),
      binding: HomeBinding(),
    ),

    // login
    GetPage(
      name: AppRoute.login,
      page: () => LoginScreen(),
    ),

    // registers
    GetPage(
      name: AppRoute.register,
      page: () => RegisterScreen(),
    ),
    GetPage(
      name: AppRoute.productDetail,
      page: () => ProductDetailScreen(),
    ),
    GetPage(
      name: AppRoute.checkOut,
      page: () => CheckOutScreen(),
    ),
    GetPage(
      name: AppRoute.paymentSuccess,
      page: () => PaymentSuccessScreen(),
    ),
    GetPage(
      name: AppRoute.adminHome,
      page: () => WidgetTreeScreenAdmin(
        title: 'Admin',
      ),
    ),
  ];

  static List<GetPage<dynamic>>? get routes => null;

  // static final unknownRoute = GetPage(
  //   name: '/404',
  //   page: () => NotFoundScreen(),
  // );
}
