import 'package:flutter/material.dart';

class KpiCardWidgetScreen extends StatelessWidget {
  final IconData? icon;
  final String title;
  final String number;
  const KpiCardWidgetScreen(
    {super.key, required this.icon, required this.title, required this.number}
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Colors.white,
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(5),
                ),
                  child: Icon(icon, size: 25, color: Colors.deepOrange,)
              ),
              SizedBox(height: 5,),
              Text(title, style: TextStyle(fontWeight: FontWeight.w500,color: Colors.blueGrey, fontSize: 15),),
              Text(number, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 28),),
            ],
          ),
        ),
      ),
    );
  }
}