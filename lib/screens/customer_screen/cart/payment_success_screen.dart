import 'package:flutter/material.dart';
import 'package:food_order/controllers/user_controller/payment_success_controller.dart';
import 'package:get/get.dart';

class PaymentSuccessScreen extends StatelessWidget {
    PaymentSuccessScreen({super.key});

  final controller = Get.put(PaymentSuccessController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Payment Success"),


            ElevatedButton(onPressed: (){
              controller.onBackToHome();
            }, child: Text("Go to Home")),
          ],
        ),
      )
    );
  }
}