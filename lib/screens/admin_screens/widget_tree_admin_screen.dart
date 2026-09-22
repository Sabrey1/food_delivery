import 'package:flutter/material.dart';
import 'package:food_order/screens/admin_screens/category/admin_category_screen.dart';
import 'package:food_order/controllers/admin_controller/widget_tree_admin_controller.dart';
import 'package:food_order/screens/admin_screens/home/admin_home_screen.dart';
import 'package:food_order/screens/admin_screens/navigation_admin_screen_.dart';
import 'package:food_order/screens/admin_screens/order/admin_order_screen.dart';
import 'package:food_order/screens/admin_screens/product/admin_product_screen.dart';
import 'package:food_order/controllers/navigation_controller.dart';
import 'package:get/get.dart';


List<Widget> screen = [
  AdminHomeScreen(),
  AdminOrderScreen(),
  AdminProductScreen(),
  AdminCategoryScreen(),
];

class WidgetTreeScreenAdmin extends StatelessWidget {
    WidgetTreeScreenAdmin({super.key, required this.title});
final NavigationController controller = Get.find();
final WidgetTreeAdminController widgetTreeAdmin = Get.put(WidgetTreeAdminController());
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Admin"),),
            ListTile(title: Text("Home"), onTap: (){},),
            ListTile(title: Text("Order"), onTap: (){},),
            ListTile(title: Text("Product"), onTap: (){},),
            ListTile(title: Text("Category"), onTap: (){},),
            ListTile(
              title: Text("Logout"),
              onTap: (){
                widgetTreeAdmin.onLogout();
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications, size: 30,),),
        ],
      ),
      body: ValueListenableBuilder(valueListenable: controller.selectedIndexNotifier, builder: (context, selectedPage, child) {
          return screen.elementAt(selectedPage);
        },),
      bottomNavigationBar: NavigationAdminScreen(),
    );
  }
}