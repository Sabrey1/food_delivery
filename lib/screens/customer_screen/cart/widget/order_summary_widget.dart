import 'package:flutter/material.dart';

class OrderSummaryWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final String size;
  final String quantity;

  const OrderSummaryWidget({super.key, required this.imageUrl, required this.title, required this.price, required this.size, required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: EdgeInsetsGeometry.all(8.0),
    child: Column(
      children: [
        
        Card(
         child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                 borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    imageUrl, height: 100, width: 100, fit: BoxFit.cover,
                  ),
                ),
            ),
            SizedBox(width: 15,),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          Text(title, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                          Text(size, style: TextStyle(fontSize: 18),),
                      ],
                    ),
                  ),
                   Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(price, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.red,),),
                          Text(quantity, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        ],
                      ),
                   ),
                   SizedBox(width: 15,),
                ],
              ),
            ),
          ],
         ),
        ),
      ],
    ),
  );
  }
}