// import 'package:food_order/services/api_service.dart';
// import 'package:get/get.dart';

// class ProductController extends GetxController{

//   final api = ApiService();

//   final productList = [].obs;
//   final CategoryList = [].obs;
  
//   @override
//   void onInit(){
//     super.onInit();
//     getProductList();
//     getCategoryList();
//   }

//   Future<void> getProductList() async {
//     final result = await api.get('product');
//     productList.value = result;

//     print(productList);
//   }
//   Future<void> getCategoryList() async {
//     final result = await api.get('category');
//     CategoryList.value = result;
//   }
// }