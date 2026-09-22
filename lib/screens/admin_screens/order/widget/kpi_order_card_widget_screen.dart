import 'package:flutter/material.dart';

class KpiOrderCardWidgetScreen extends StatelessWidget {
  final String title;
  final String number;
  const KpiOrderCardWidgetScreen(
    {super.key, required this.title, required this.number}
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