import 'package:flutter/material.dart';
import 'package:food_order/controllers/cart_contoller.dart';
import 'package:food_order/screens/customer_screen/cart/widget/card_check_out_widget.dart';
import 'package:food_order/screens/customer_screen/cart/widget/card_total_widget.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
 
  CartScreen({super.key});
  final controller = Get.put(CartContoller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
              CardCheckOutWidget(
                imageUrl:  'https://www.allrecipes.com/thmb/kgZB2WpV5NUBsd0XPOkcOOV9SEY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/23290-pizza-dough-iii-VAT-Beauty-4x3-06192801c8fa48fe8afaadfea28f532b.jpg',
                title:  'Pizza', 
                price: '\$4.5', 
              ),
              CardCheckOutWidget(
                imageUrl:  'https://www.allrecipes.com/thmb/kgZB2WpV5NUBsd0XPOkcOOV9SEY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/23290-pizza-dough-iii-VAT-Beauty-4x3-06192801c8fa48fe8afaadfea28f532b.jpg',
                title:  'Pizza', 
                price: '\$4.5', 
              ),
              CardCheckOutWidget(
                imageUrl:  'https://www.allrecipes.com/thmb/kgZB2WpV5NUBsd0XPOkcOOV9SEY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/23290-pizza-dough-iii-VAT-Beauty-4x3-06192801c8fa48fe8afaadfea28f532b.jpg',
                title:  'Pizza', 
                price: '\$4.5', 
              ),
              CardCheckOutWidget(
                imageUrl:  'https://www.allrecipes.com/thmb/kgZB2WpV5NUBsd0XPOkcOOV9SEY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/23290-pizza-dough-iii-VAT-Beauty-4x3-06192801c8fa48fe8afaadfea28f532b.jpg',
                title:  'Pizza', 
                price: '\$4.5', 
              ),

              SizedBox(height: 20,),
              CardTotalWidget(),

              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: (){
                    controller.onCheckOut();
                  },
                    label: Text("Checkout",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

                    icon: Icon(Icons.arrow_forward),
                ),
              ),
              SizedBox(height: 20,),
          ],
        ),
      )
    );
  }
}