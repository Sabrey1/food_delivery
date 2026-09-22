import 'package:flutter/material.dart';
import 'package:food_order/controllers/home_controller.dart';
import 'package:food_order/screens/customer_screen/home/widgets/product_card_screen.dart';
import 'package:food_order/screens/customer_screen/home/widgets/product_discount_screen.dart';
import 'package:food_order/widgets/chip_category_screen.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
    HomeScreen({super.key});
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:  
              Column(
                children: [
                  SearchAnchor(builder: (BuildContext context, SearchController controller){
                    return SearchBar(
                      leading: Icon(Icons.search),
                      hintText: "Search for food",
                      padding: const WidgetStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 16),
                      ),

                      shape: const WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),

                    );
                  }, suggestionsBuilder: (BuildContext context, SearchController controller) {return [];  },
                  ),
                  SizedBox(height: 15,),
                  SizedBox(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                        child: Row(
                          spacing: 8,
                          children: [
                            ChipCategory(title: "All",),
                            ChipCategory(title: "Burger",),
                            ChipCategory(title: "Pizza",),
                            ChipCategory(title: "Sandwich",),
                            ChipCategory(title: "Sandwich",),
                            ChipCategory(title: "Sandwich",),
                            ChipCategory(title: "Sandwich",),
                            ChipCategory(title: "Sandwich",),
                            ChipCategory(title: "Sandwich",),
                          ],
                        ),
                      )
                  ),
                  SizedBox(height: 15,),
                  GridView.count(
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.69,
                    children: [
                      ProductCard(
                        onTap: () {
                          // controller.goToProductDetail();
                        },
                        title: "Burger",
                        imageUrl: "https://images.themodernproper.com/production/posts/2016/ClassicCheeseBurger_9.jpg?w=1200&h=1200&q=60&fm=jpg&fit=crop&dm=1749310239&s=463b18fc3bb51dc5d96e866c848527c4",
                        icon: Icons.star_border,
                        rating: "4.5",
                        price: "\$200",
                      ),
                      ProductCard(
                        title: "Fries Chicken",
                        imageUrl: "https://cdn.shopify.com/s/files/1/0173/8181/8422/files/20250701141944-fried-20chicken.jpg?v=1751379586&width=1600&height=900",
                        icon: Icons.star_border,
                        rating: "4.5",
                        price: "\$200",
                      ),
                      ProductCard(
                        title: "Burger",
                        imageUrl: "https://www.recipetineats.com/tachyon/2022/09/Crispy-Fries_8.jpg",
                        icon: Icons.star_border,
                        rating: "4.5",
                        price: "\$200",
                      ),
                      ProductCard(
                        title: "Pizza",
                        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl8UucttLl4QNlRN_wS_xH6s3lMUGk8n5_jA&s",
                        icon: Icons.star_border,
                        rating: "4.5",
                        price: "\$200",
                      ),
                      ProductCard(
                        title: "Burger",
                        imageUrl: "https://www.recipetineats.com/tachyon/2022/09/Crispy-Fries_8.jpg",
                        icon: Icons.star_border,
                        rating: "4.5",
                        price: "\$200",
                      ),
                      ProductCard(
                        title: "Pizza",
                        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl8UucttLl4QNlRN_wS_xH6s3lMUGk8n5_jA&s",
                        icon: Icons.star_border,
                        rating: "4.5",
                        price: "\$200",
                      ),
                      ProductCard(
                        title: "Burger",
                        imageUrl: "https://images.themodernproper.com/production/posts/2016/ClassicCheeseBurger_9.jpg?w=1200&h=1200&q=60&fm=jpg&fit=crop&dm=1749310239&s=463b18fc3bb51dc5d96e866c848527c4",
                        icon: Icons.star_border,
                        rating: "4.5",
                        price: "\$200",
                      ),
                      ProductCard(
                        title: "Fries Chicken",
                        imageUrl: "https://cdn.shopify.com/s/files/1/0173/8181/8422/files/20250701141944-fried-20chicken.jpg?v=1751379586&width=1600&height=900",
                        icon: Icons.star_border,
                        rating: "4.5",
                        price: "\$200",
                      ),
                      ProductCard(
                        title: "Burger",
                        imageUrl: "https://www.recipetineats.com/tachyon/2022/09/Crispy-Fries_8.jpg",
                        icon: Icons.star_border,
                        rating: "4.5",
                        price: "\$200",
                      ),
                      ProductCard(
                        title: "Pizza",
                        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl8UucttLl4QNlRN_wS_xH6s3lMUGk8n5_jA&s",
                        icon: Icons.star_border,
                        rating: "4.5",
                        price: "\$200",
                      ),
                      ProductCard(
                        title: "Burger",
                        imageUrl: "https://www.recipetineats.com/tachyon/2022/09/Crispy-Fries_8.jpg",
                        icon: Icons.star_border,
                        rating: "4.5",
                        price: "\$200",
                      ),
                      ProductCard(
                        title: "Pizza",
                        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl8UucttLl4QNlRN_wS_xH6s3lMUGk8n5_jA&s",
                        icon: Icons.star_border,
                        rating: "4.5",
                        price: "\$200",
                      ),
                    ]
                  ),

                  SizedBox(height: 20,),
                  ProductDiscountScreen(
                    title: "30% Off Your First Order!",
                    imageUrl: "https://www.recipetineats.com/tachyon/2022/09/Crispy-Fries_8.jpg",
                  ),
                ],
              ),
              )
      ),
    );
  }
}
