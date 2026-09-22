import 'package:flutter/material.dart';
import 'package:food_order/screens/admin_screens/order/widget/active_order_card_widget.dart';
import 'package:food_order/screens/admin_screens/order/widget/kpi_order_card_widget_screen.dart';

class AdminOrderScreen extends StatelessWidget {
  const AdminOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(padding: const EdgeInsets.all(8.0), child: Column(
        children: [

          SearchBar(
            padding: const WidgetStatePropertyAll<EdgeInsets>(
              EdgeInsets.symmetric(horizontal: 16.0),
            ),
            shape: const WidgetStatePropertyAll<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            leading: Icon(Icons.search),
            hintText: "Search Order",
          ),  

          SizedBox(height: 10,),
          GridView.count(
            shrinkWrap: true, 
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2, 
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            childAspectRatio: 1.5,
            children: [
              KpiOrderCardWidgetScreen(
              title: "Total Order",
              number: "1,000",
              ),
              KpiOrderCardWidgetScreen(
                title: "Total Order",
                number: "1,000",
              ),
              KpiOrderCardWidgetScreen(
                title: "Total Order",
                number: "1,000",
              ),
              KpiOrderCardWidgetScreen(
                title: "Total Order",
                number: "1,000",
              ),
            ]),
            
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Active Order", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                Text("View All Order", style: TextStyle(color: Colors.blue, fontSize: 14),),
              ]
            ),
            
            SizedBox(height: 15,),
            ActiveOrderCardWidget(),
        ],
      )
      ),
    );
  }
}