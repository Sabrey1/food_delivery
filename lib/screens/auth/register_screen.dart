import 'package:flutter/material.dart';
import 'package:food_order/controllers/register_controller.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
final controller = Get.put(RegisterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                               Text("Create Account", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                               Text("Sign Up to start ordering food", style: TextStyle(),),
                            ]
                          ),
                          SizedBox(height: 30,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Text("Full Name"),
                          SizedBox(height: 5,),
                          TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              labelText: "name@example.com",
                              border: OutlineInputBorder()
                            ),
                          ),
                          SizedBox(height:10,),
                          Text("Phone Number"),
                          SizedBox(height: 5,),
                          TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.phone),
                              labelText: "(+855) 123 456 789",
                              border: OutlineInputBorder()
                            ),
                          ),
                          SizedBox(height:10,),
                          Text("Email"),
                          SizedBox(height: 5,),
                          TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              labelText: "name@example.com",
                              border: OutlineInputBorder()
                            ),
                          ),
                          SizedBox(height:10,),

                          Text("Password"),
                          SizedBox(height: 5,),
                          TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: Icon(Icons.remove_red_eye),
                              labelText: "Enter your password",
                              border: OutlineInputBorder()
                            ),
                          ),
                          SizedBox(height: 10),

                          Text("Confirm Password"),
                          SizedBox(height: 5,),
                          TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: Icon(Icons.remove_red_eye),
                              labelText: "Enter your password",
                              border: OutlineInputBorder()
                            ),
                          ),
                          SizedBox(height: 5),
                            ],
                          ),
                          
                          
                          Align(alignment: Alignment.centerRight,child: Text("Forgot Password?")),
                          SizedBox(height: 10),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: (){
                                controller.onRegisterAccount();
                              },
                              child: Text("Register", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),)
                            ),
                          ),

                          SizedBox(height: 10,),
                         
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Already have an account?"),
                              SizedBox(width: 5,),
                               InkWell(onTap: (){
                                controller.onLoginAccount();
                               }, child: Text("Login", style: TextStyle(fontWeight: FontWeight.bold)))
                            ],
                          ),
                        ],
                      ),
                    )
                  )
          ]),
        ),
      )
    );
  }
}