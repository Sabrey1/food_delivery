import 'package:flutter/material.dart';

class CardDetailWidget extends StatelessWidget {
  final String title;
  final String price;
  final String rate;
  final IconData icon;
  final IconData iconMinute;
  final String minute;
  final IconData iconKcal;
  final String kcal;
  final String status;
  final IconData iconStatus;
  final String description;

  const CardDetailWidget({super.key,
  required this.title,
  required this.price,
  required this.rate,
  required this.icon,
  required this.iconMinute,
  required this.minute,
  required this.iconKcal,
  required this.kcal,
  required this.status,
  required this.iconStatus,
  required this.description
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.all(14.0),
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(title, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                Spacer(),
                Text(price, style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.red),),
              ],
            ),
            Row(
              children: [
                Icon(icon, color: Colors.amber,),
                Text(rate, style: TextStyle(fontSize: 18  , fontWeight: FontWeight.w500),),
              ],
            ),

            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 6),
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(iconMinute, color: Colors.red,),
                        Text(minute, style: TextStyle(fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ),
                ), 
                Expanded(
                  child: Container(
                   margin: EdgeInsets.only(right: 6),
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(iconKcal, color: Colors.red,),
                        Text(kcal, style: TextStyle(fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ),
                ), 
                Expanded(
                  child: Container(
                    
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(iconStatus, color: Colors.red,),
                        Text(status, style: TextStyle(fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ),
                ), 
              ],
            ),
            
            SizedBox(height: 20,),
            Text("Description", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Text(description),
          ],
        ),
      ),
    ),
  );
  }
}