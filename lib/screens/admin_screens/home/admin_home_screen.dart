import 'package:flutter/material.dart';
import 'package:food_order/controllers/home_controller.dart';
import 'package:food_order/screens/admin_screens/home/widget/chart_daily_sale_widget.dart';
import 'package:food_order/screens/admin_screens/home/widget/kpi_card_widget_screen.dart';
import 'package:food_order/screens/admin_screens/home/widget/recent_orders_widget.dart';
import 'package:get/get.dart';

class AdminHomeScreen extends StatelessWidget {
  AdminHomeScreen({super.key});

  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
                childAspectRatio: 1.2,
                children: [
                  KpiCardWidgetScreen(
                    icon: Icons.shopping_cart_outlined,
                    title: "Total Order",
                    number: "1250",
                  ),
                  KpiCardWidgetScreen(
                    icon: Icons.inventory_sharp,
                    title: "Pending Order",
                    number: "10",
                  ),
                  KpiCardWidgetScreen(
                    icon: Icons.delivery_dining,
                    title: "Complete Orders",
                    number: "1125",
                  ),
                  KpiCardWidgetScreen(
                    icon: Icons.delivery_dining,
                    title: "Total Revenue",
                    number: "\$12,000",
                  ),
                ]
              ),
        
              const SizedBox(height: 20,),

              ChartDailySaleWidget(),


              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Recent Orders", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                Text("View All", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),)
                ]
              ),
               const SizedBox(height: 5,),
              RecentOrdersWidget(
                title: "Alex Johnson",
                orderId: "#001",
                total: "\$4.5",
                date: "21:00",
                status: "Pending",
                image: "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
              ),
              RecentOrdersWidget(
                title: "Alex Johnson",
                orderId: "#001",
                total: "\$4.5",
                date: "21:00",
                status: "Pending",
                image: "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
              ),
              RecentOrdersWidget(
                title: "Alex Johnson",
                orderId: "#001",
                total: "\$4.5",
                date: "21:00",
                status: "Pending",
                image: "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
              ),
              RecentOrdersWidget(
                title: "Alex Johnson",
                orderId: "#001",
                total: "\$4.5",
                date: "21:00",
                status: "Pending",
                image: "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
              ),
              RecentOrdersWidget(
                title: "Alex Johnson",
                orderId: "#001",
                total: "\$4.5",
                date: "21:00",
                status: "Pending",
                image: "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
              ),
              RecentOrdersWidget(
                title: "Alex Johnson",
                orderId: "#001",
                total: "\$4.5",
                date: "21:00",
                status: "Pending",
                image: "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
              ),
              RecentOrdersWidget(
                title: "Alex Johnson",
                orderId: "#001",
                total: "\$4.5",
                date: "21:00",
                status: "Pending",
                image: "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
              ),
              RecentOrdersWidget(
                title: "Alex Johnson",
                orderId: "#001",
                total: "\$4.5",
                date: "21:00",
                status: "Pending",
                image: "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
              ),
            ],
          )
        ),
      ),
    );
  }
}