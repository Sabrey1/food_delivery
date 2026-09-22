import 'package:flutter/material.dart';

class CardTotalWidget extends StatelessWidget {
  const CardTotalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
  padding: const EdgeInsets.all(8.0),
  child: Card(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("Subtotal", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
            Text("\$18.00", style: TextStyle(color: Colors.black,fontSize: 20, fontWeight: FontWeight.bold),),
          ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("Delivery (Free)", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
            Text("\$0.0", style: TextStyle(color: Colors.green.shade400,fontSize: 20, fontWeight: FontWeight.bold),),
          ],),
          SizedBox(height: 10,),
          Divider(height: 1, color: Colors.grey,),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("Total", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            Text("\$18.00", style: TextStyle(color: Colors.red,fontSize: 25, fontWeight: FontWeight.bold),),
          ],),
        ],
      ),
    ),
  ),
);
  }
}