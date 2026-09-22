// import 'package:supabase_flutter/supabase_flutter.dart';

// class ApiService {
//   final supabase = Supabase.instance.client;

//   Future<List<dynamic>> get(String table) async {
//     return await supabase
//         .from(table)
//         .select();
//   }

//   Future<List<dynamic>> getWhere(
//     String table, {
//     String fields = '*',
//     required String column,
//     required dynamic value,
//   }) async {
//     return await supabase
//         .from(table)
//         .select(fields)
//         .eq(column, value);
//   }

//   Future<dynamic> getById(
//     String table,
//     int id,
//   ) async {
//     return await supabase
//         .from(table)
//         .select()
//         .eq('id', id)
//         .single();
//   }

//   Future<void> post(
//     String table,
//     Map<String, dynamic> data,
//   ) async {
//     await supabase
//         .from(table)
//         .insert(data);
//   }

//   Future<void> put(
//     String table,
//     int id,
//     Map<String, dynamic> data,
//   ) async {
//     await supabase
//         .from(table)
//         .update(data)
//         .eq('id', id);
//   }

//   Future<void> delete(
//     String table,
//     int id,
//   ) async {
//     await supabase
//         .from(table)
//         .delete()
//         .eq('id', id);
//   }
// }



// // Usage:
// // final api = ApiService();

// // =======================

// // GET
// // final products = await api.get('products');

// // =======================

// // GET BY ID
// // final product = await api.getById(
// //   'products',
// //   1,
// // );

// // =======================

// // INSERT
// // await api.post('products', {
// //   'name': 'Coffee',
// //   'price': 2.5,
// // });

// // =======================

// // UPDATE
// // await api.put(
// //   'products',
// //   1,
// //   {
// //     'name': 'Latte',
// //   },
// // );

// // =======================

// // DELETE
// // await api.delete('products', 1);