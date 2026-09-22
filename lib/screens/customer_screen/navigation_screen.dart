import 'package:flutter/material.dart';
import 'package:food_order/controllers/navigation_controller.dart';
import 'package:get/get.dart';

class NavigationScreen extends StatelessWidget {
    NavigationScreen({super.key});
final NavigationController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: controller.selectedIndexNotifier,
      builder: (context, selectedPage, child) {
        return NavigationBar(destinations: 
        [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart),
            label: "Cart"
          ),
          NavigationDestination(
            icon: Icon(Icons.receipt_long_sharp),
            label: "Orders"
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: "Profile"
          ),
        ],
        onDestinationSelected: (int value) {
            controller.selectedIndexNotifier.value = value;
          },
          selectedIndex: selectedPage,
        );
     },
    );
  }
}