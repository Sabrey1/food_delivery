import 'package:flutter/material.dart';
import 'package:food_order/controllers/login_controller.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column (
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("lib/assets/images/logo.png", height: 100, width: 100,),
                    Text("Welcome Back", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                    SizedBox(height: 5,),
                    Text("Login to Continue ordering food", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
            
                    Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Username"),
                            SizedBox(height: 5,),
                            TextField(
                              onChanged: (val)=> controller.email.value = val,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person),
                                labelText: "Enter your username",
                                border: OutlineInputBorder()
                              ),
                            ),
                            SizedBox(height:20,),
          
                            Text("Password"),
                            SizedBox(height: 5,),
                             Obx( () =>
                                TextField(
                                onChanged: (val) => controller.password.value = val,
                                obscureText: controller.isPasswordHidden.value,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.lock),
                                  suffixIcon: IconButton(
                                    onPressed: () => controller.isPasswordHidden.value = !controller.isPasswordHidden.value,
                                    icon: controller.isPasswordHidden.value ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                                  ),
                                  labelText: "Enter your password",
                                  border: OutlineInputBorder()
                                ),
                              ),
                             ),
                            SizedBox(height: 5),
                            Align(alignment: Alignment.centerRight,child: Text("Forgot Password?")),
                            SizedBox(height: 10),
          
                            Obx(()=>
                               SizedBox(
                                height: 50,
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: controller.isLoading.value ? null : controller.onLogin,
                                  child: controller.isLoading.value
                                  ? CircularProgressIndicator(color: Colors.white)
                                  : Text("Login", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),)
                                ),
                              ),
                            ),
          
                            SizedBox(height: 10,),
                            Row(children: [
                              Expanded(child: Divider(thickness: 1, color: Colors.black,)),
                              SizedBox(width: 10,),
                              Text("OR Continue With"),
                               SizedBox(width: 10,),
                              Expanded(child: Divider(thickness: 1, color: Colors.black,)),
                            ],),
                            SizedBox(height: 10,),
                            SizedBox(
                              height: 40,
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: (){},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.g_mobiledata),
                                    SizedBox(width: 5,),
                                    Text("Continue with Google", style: TextStyle(fontSize: 15),),
                                  ],
                                )
                              ),
                            ),
                            SizedBox(height: 10,),
                            SizedBox(
                              height: 40,
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: (){},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.facebook),
                                    SizedBox(width: 5,),
                                    Text("Continue with Facebook", style: TextStyle(fontSize: 15),),
                                  ],
                                )
                              ),
                            ),
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Don't have an account?"),
                                SizedBox(width: 5,),
                                 InkWell(onTap: controller.onRegister, child: Text("Register", style: TextStyle(fontWeight: FontWeight.bold)))
                              ],
                            ),
                          ],
                        ),
                      )
                    )
                  ],
            ),
          ),
        )
      )
    );
  }
}