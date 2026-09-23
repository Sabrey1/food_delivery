import 'package:flutter/material.dart';
import 'package:food_order/routes/app_route.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RegisterController extends GetxController{

  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();
  final confirmPasswordController = TextEditingController();


  Future<void> onRegisterAccount(
    String username,
    String email,
    String password,
    String? phone,
  ) async{  
    try{
      UserCredential result =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email.trim(),
      password: password,
    );

    User? users = result.user;
    
    if (users == null) {
      Get.snackbar(
        'Error',
        'Failed to create account.',
      );
      return;
    }

     
      await users.sendEmailVerification();

      final roleQuery = await FirebaseFirestore.instance
        .collection('roles')
        .where('name', isEqualTo: 'Customer')
        .limit(1)
        .get();

    if (roleQuery.docs.isEmpty) {
      Get.snackbar(
        'Error',
        'Customer role not found.',
      );
      return;
    }
    final customerRoleId = roleQuery.docs.first.id;

      await FirebaseFirestore.instance.collection('users').doc(users.uid).set({
        'username': username,
        'email': email,
        'phone': phone,
        'role_id': customerRoleId,
        'isActive': true,
        'createdAt': FieldValue.serverTimestamp(),
      });
      Get.snackbar(
      'Success',
      'Account created. Please check your email.',
    );

    Get.offAllNamed(AppRoute.login);
     

    } on FirebaseAuthException catch (e){
      if(e.code == 'weak-password'){
        Get.snackbar('Error', 'The password provided is too weak.');
      } else if(e.code == 'email-already-in-use'){
        Get.snackbar('Error', 'The account already exists for that email.');
      }
    }
  }

  @override
  void onClose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    phoneController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }

  void onLoginAccount(){
    Get.offAllNamed(AppRoute.login);
  }
}