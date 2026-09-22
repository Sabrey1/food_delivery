import 'package:flutter/material.dart';
import 'package:food_order/controllers/check_out_controller.dart';
import 'package:food_order/screens/customer_screen/cart/widget/card_input_info_customer_widget.dart';
import 'package:food_order/screens/customer_screen/cart/widget/card_total_widget.dart';
import 'package:food_order/screens/customer_screen/cart/widget/order_summary_widget.dart';
import 'package:food_order/screens/customer_screen/cart/widget/payment_method_widget.dart';
import 'package:get/get.dart';

class CheckOutScreen extends StatelessWidget {
  CheckOutScreen({super.key});

  final controller = Get.put(CheckOutController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Check Out", style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              
              CardInputInfoCustomerWidget(),

              Align(alignment: Alignment.topLeft,child: Text("Order Summary", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
              OrderSummaryWidget(
                imageUrl: "https://www.allrecipes.com/thmb/kgZB2WpV5NUBsd0XPOkcOOV9SEY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/23290-pizza-dough-iii-VAT-Beauty-4x3-06192801c8fa48fe8afaadfea28f532b.jpg",
                title: "Pizza",
                price: "\$4.5",
                size: "Large",
                quantity: "x1"
              ),
              OrderSummaryWidget(
                imageUrl: "https://www.allrecipes.com/thmb/kgZB2WpV5NUBsd0XPOkcOOV9SEY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/23290-pizza-dough-iii-VAT-Beauty-4x3-06192801c8fa48fe8afaadfea28f532b.jpg",
                title: "Pizza",
                price: "\$4.5",
                size: "Large",
                quantity: "x1"
              ),
              OrderSummaryWidget(
                imageUrl: "https://www.allrecipes.com/thmb/kgZB2WpV5NUBsd0XPOkcOOV9SEY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/23290-pizza-dough-iii-VAT-Beauty-4x3-06192801c8fa48fe8afaadfea28f532b.jpg",
                title: "Pizza",
                price: "\$4.5",
                size: "Large",
                quantity: "x1"
              ),
               

              PaymentMethodWidget(
                title:  "Cash on Delivery", 
                subtitle: "Pay when you receive your order", 
                icon: Icons.attach_money
              ),
              PaymentMethodWidget(
                title: "Debit Card", 
                subtitle: "**** **** **** 1234", 
                icon: Icons.credit_card
              ),

              CardTotalWidget(),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: (){
                    controller.onComfirm();
                  },
                  child: Text("Confirm Order", style: TextStyle(fontSize: 20),),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
 
 