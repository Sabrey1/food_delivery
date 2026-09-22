
import 'package:flutter/material.dart';
import 'package:food_order/constants/constant.dart';
import 'package:food_order/controllers/splash_controller.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
    SplashScreen({super.key});
final controller = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: infoColor,
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("lib/assets/images/logo.png", height: 100, width: 100,),
              Text("Food Order App", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              Text("Premuim Delivery", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),),
            ],
          ),
        ),
      )
    );
  } 
}