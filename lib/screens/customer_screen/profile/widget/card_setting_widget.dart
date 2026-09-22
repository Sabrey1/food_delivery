import 'package:flutter/material.dart';

class CardSettingWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final IconData iconRight;
  const CardSettingWidget({super.key, required this.title, required this.icon, required this.iconRight});

  @override
  Widget build(BuildContext context) {
    return Card(
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    shape: BoxShape.circle
                  ),
                  child: Icon(icon, color: Colors.deepOrange,),
                ),
                SizedBox(width: 10,),
                Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
              ],
            )),
          Icon(iconRight, size: 18,),
        ],
      ),
    ),
  );
  }
}