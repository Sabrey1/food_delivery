import 'package:food_order/routes/app_route.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginController extends GetxController{
  final supabase = Supabase.instance.client;

  final email = ''.obs;
  final password = ''.obs;
  final isLoading = false.obs;
  final isPasswordHidden = true.obs;

  void togglePasswordVisibility(){
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  Future<void> onLogin() async{
    if(email.value.isEmpty || password.value.isEmpty){
      Get.snackbar(
        'Error',
        'Please enter email and password',
        snackPosition: SnackPosition.TOP
      );
      return;
    }
    try{      
      isLoading.value = true;
      // 2. Fetch role from  user
      // final userData = await supabase.from('user').select('role_id').eq('id', userId).single();
     final userData = await supabase
  .from('user')
  .select('id, role_id, username, email')
  .eq('email', email.value.trim())
  .eq('password', password.value.trim())
  .maybeSingle();

if (userData == null) {
  Get.snackbar('Error', 'Invalid login credentials',
      snackPosition: SnackPosition.BOTTOM);
  return;
}

// Debug: print role_id to verify it
print('role_id: ${userData['role_id']}');

final roleData = await supabase
  .from('role')
  .select('name')
  .eq('id', userData['role_id'].toString()) // force string
  .maybeSingle(); // use maybeSingle to avoid crash

if (roleData == null) {
  Get.snackbar('Error', 'Role not found',
      snackPosition: SnackPosition.BOTTOM);
  return;
}

final roleName = roleData['name'];

if (roleName == 'Admin') {
  print("Admin");
  Get.offAllNamed(AppRoute.adminHome);
} else {
  print("Customer");
  Get.offAllNamed(AppRoute.home);
}
    }on AuthException catch(e){
      Get.snackbar(
        'Error', e.message,
        snackPosition: SnackPosition.BOTTOM
      );
    }catch(e){
      Get.snackbar(
        'Error', e.toString(),
        snackPosition: SnackPosition.BOTTOM
      );
    }finally{
      isLoading.value = false;
    }
  }
  void onRegister(){
    Get.offAllNamed(AppRoute.register);
  }
}