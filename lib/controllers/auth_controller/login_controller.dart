
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_order/routes/app_route.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final email = ''.obs;
  final password = ''.obs;
  final isLoading = false.obs;
  final isPasswordHidden = true.obs;

  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  Future<void> onLogin() async {
    if (email.value.isEmpty || password.value.isEmpty) {
      Get.snackbar(
        'Error',
        'Please enter email and password',
        snackPosition: SnackPosition.TOP,
      );
      return;
    }

    try {
      isLoading.value = true;

      // 1. Login with Firebase Authentication
      UserCredential result =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.value.trim(),
        password: password.value.trim(),
      );

      User? user = result.user;

      if (user == null) {
        Get.snackbar(
          'Error',
          'Login failed',
          snackPosition: SnackPosition.BOTTOM,
        );
        return;
      }

      // 2. Check email verification
      await user.reload();
      user = FirebaseAuth.instance.currentUser;

      if (user == null) {
        return;
      }

      if (!user.emailVerified) {
        Get.snackbar(
          'Email Not Verified',
          'Please check your email and verify your account.',
          snackPosition: SnackPosition.BOTTOM,
        );
        return;
      }

      // 3. Get user data from Firestore
      final userData = await FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .get();

      if (!userData.exists) {
        Get.snackbar(
          'Error',
          'User information not found.',
          snackPosition: SnackPosition.BOTTOM,
        );
        return;
      }

      final data = userData.data();

      if (data == null) {
        Get.snackbar(
          'Error',
          'User data is empty.',
          snackPosition: SnackPosition.BOTTOM,
        );
        return;
      }

      // 4. Check active status
      final isActive = data['isActive'] ?? true;

      if (isActive == false) {
        Get.snackbar(
          'Error',
          'Your account is inactive.',
          snackPosition: SnackPosition.BOTTOM,
        );
        return;
      }

      // 5. Get role
      final roleId = data['role_id'];

      print('User UID: ${user.uid}');
      print('Role ID: $roleId');

      if (roleId == null) {
        Get.snackbar(
          'Error',
          'Role not found.',
          snackPosition: SnackPosition.BOTTOM,
        );
        return;
      }

      // 6. Get role from Firestore
      final roleData = await FirebaseFirestore.instance
          .collection('roles')
          .doc(roleId.toString())
          .get();

      if (!roleData.exists) {
        Get.snackbar(
          'Error',
          'Role not found.',
          snackPosition: SnackPosition.BOTTOM,
        );
        return;
      }

      final role = roleData.data();

      if (role == null) {
        return;
      }

      final roleName = role['name'];

      print('Role Name: $roleName');

      // 7. Navigate according to role
      if (roleName == 'Admin') {
        print('Admin');
        Get.offAllNamed(AppRoute.adminHome);
      } else {
        print('Customer');
        Get.offAllNamed(AppRoute.home);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Get.snackbar(
          'Error',
          'No account found with this email.',
          snackPosition: SnackPosition.BOTTOM,
        );
      } else if (e.code == 'wrong-password' ||
          e.code == 'invalid-credential') {
        Get.snackbar(
          'Error',
          'Invalid email or password.',
          snackPosition: SnackPosition.BOTTOM,
        );
      } else if (e.code == 'invalid-email') {
        Get.snackbar(
          'Error',
          'Invalid email address.',
          snackPosition: SnackPosition.BOTTOM,
        );
      } else if (e.code == 'user-disabled') {
        Get.snackbar(
          'Error',
          'This account has been disabled.',
          snackPosition: SnackPosition.BOTTOM,
        );
      } else {
        Get.snackbar(
          'Error',
          e.message ?? 'Login failed.',
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      Get.snackbar(
        'Error',
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
    }
  }

  void onRegister() {
    Get.offAllNamed(AppRoute.register);
  }
}
