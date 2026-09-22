import 'package:flutter/material.dart';
import 'package:food_order/screens/customer_screen/product/widget/card_detail_widget.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Detail"),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.heart_broken_sharp)
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.shopping_cart)
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              "https://www.allrecipes.com/thmb/kgZB2WpV5NUBsd0XPOkcOOV9SEY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/23290-pizza-dough-iii-VAT-Beauty-4x3-06192801c8fa48fe8afaadfea28f532b.jpg",
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            CardDetailWidget(
              title: "Pizza", 
              rate: "4.5",
              icon:  Icons.star_border,
              iconMinute: Icons.timer_outlined,
              minute: "30 min", 
              iconKcal: Icons.fireplace_outlined,
              kcal: "300 kcal",
              price:  "\$100",
              iconStatus:  Icons.check_circle,
              status: "Available",
              description: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quod.Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quod.Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quod.Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quod.Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quod.",
            ),
          ],
        ),
      ),
    );
  }
}