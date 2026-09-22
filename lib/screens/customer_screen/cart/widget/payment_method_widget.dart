import 'package:flutter/material.dart';

class PaymentMethodWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  const PaymentMethodWidget({super.key, required this.title, required this.subtitle, required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
    height: 100,
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.1), // light background
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                  icon,
                  size: 30,
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(width: 15,),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 20),  ),
                  Text(subtitle, style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 15),  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
  }
}