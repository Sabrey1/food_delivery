import 'package:flutter/material.dart';

class RecentOrdersWidget extends StatelessWidget {
  final String title;
  final String image;
  final String orderId;
  final String date;
  final String status;
  final String total;

  const RecentOrdersWidget({super.key, required this.title, required this.image, required this.orderId, required this.date, required this.status, required this.total});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  
        Card(
          color: Colors.white,
          child:Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(image),
                ),
                SizedBox(width: 10,),
            
                Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title, style: TextStyle(fontWeight: FontWeight.bold),),
                        Row(
                          children: [
                            Text(orderId, style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(" - ", style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(date + " AM", style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(total, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                      
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.green.shade200,
                          
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(status,
                        style: TextStyle(fontWeight: FontWeight.bold),)
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}