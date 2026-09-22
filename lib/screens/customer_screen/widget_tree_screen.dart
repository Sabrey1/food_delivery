import 'package:flutter/material.dart';
import 'package:food_order/screens/customer_screen/cart/cart_screen.dart';
import 'package:food_order/screens/customer_screen/home/home_screen.dart';
import 'package:food_order/screens/customer_screen/navigation_screen.dart';
import 'package:food_order/screens/customer_screen/order/order_screen.dart';
import 'package:food_order/screens/customer_screen/profile/profile_screen.dart';
import 'package:food_order/controllers/navigation_controller.dart';
import 'package:get/get.dart';


List<Widget> screen = [
  HomeScreen(),
  CartScreen(),
  OrderScreen(),
  ProfileScreen(),
  
];

class WidgetTreeScreen extends StatelessWidget {
    WidgetTreeScreen({super.key, required this.title});
final NavigationController controller = Get.find();
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),

        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.supervised_user_circle_rounded, size: 40,),),
        ],
      ),
      body: ValueListenableBuilder(valueListenable: controller.selectedIndexNotifier, builder: (context, selectedPage, child) {
          return screen.elementAt(selectedPage);
        },),
      bottomNavigationBar: NavigationScreen(),
    );
  }
}