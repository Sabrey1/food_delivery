import 'package:flutter/material.dart';

class CardInputInfoCustomerWidget extends StatelessWidget {
  const CardInputInfoCustomerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Delivery Information", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          SizedBox(height: 15,),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    hintText: "Jonh Doe",
                    border: OutlineInputBorder()
                )),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "+855 123 456 789",
                    labelText: "Phone Number",
                    border: OutlineInputBorder()
                )),
              ),
            ],
          ),
          SizedBox(height: 10,),
          SizedBox(
             height: 100,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Delivery Address",
                      hintText: "Enter your full address",
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(
                      vertical: 60,
                      horizontal: 12,
                    ),
                  )),
                ),
              ],
            ),
          ),
        ],
    )
  );
  }
}