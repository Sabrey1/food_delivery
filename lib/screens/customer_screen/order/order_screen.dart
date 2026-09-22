import 'package:flutter/material.dart';
import 'package:food_order/screens/customer_screen/order/widget/kpi_cart_order_widget.dart';
import 'package:food_order/screens/customer_screen/order/widget/recent_transaction_widget.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 20),

            KpiCartOrder(),

            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Recent Transactions",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )
            ),

           RecentTransactionWidget(
              imageUrl: "https://www.allrecipes.com/thmb/kgZB2WpV5NUBsd0XPOkcOOV9SEY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/23290-pizza-dough-iii-VAT-Beauty-4x3-06192801c8fa48fe8afaadfea28f532b.jpg",
              orderId: "#001",
              date: "Oct 24, 2023",
              items: "2",
              price: "\$10",
              status: "Delivered",
            ),

            RecentTransactionWidget(
              imageUrl: "https://www.allrecipes.com/thmb/kgZB2WpV5NUBsd0XPOkcOOV9SEY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/23290-pizza-dough-iii-VAT-Beauty-4x3-06192801c8fa48fe8afaadfea28f532b.jpg",
              orderId: "#00331",
              date: "Oct 24, 2023",
              items: "1",
              price: "\$40",
              status: "Preparing",
            ),

            RecentTransactionWidget(
              imageUrl: "https://www.allrecipes.com/thmb/kgZB2WpV5NUBsd0XPOkcOOV9SEY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/23290-pizza-dough-iii-VAT-Beauty-4x3-06192801c8fa48fe8afaadfea28f532b.jpg",
              orderId: "#00145",
              date: "Oct 24, 2023",
              items: "3",
              price: "\$20",
              status: "Pending",
            ),
          ],
        ),
      )
    );
  }
}