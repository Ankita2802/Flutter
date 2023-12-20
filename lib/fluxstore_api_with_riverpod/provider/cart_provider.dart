import 'dart:developer';
import 'package:figma/fluxstore_api_with_riverpod/repositry/auth_repo.dart';
import 'package:figma/provider/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// final categoryProvider = ChangeNotifierProvider<CartProvider>((ref) {
//   final categoryNotifier = CartProvider();
//   categoryNotifier.getCategory();
//   return categoryNotifier;
// });
final addCartchangeprovider =
    ChangeNotifierProvider<CartProvider>((ref) => CartProvider());

class CartProvider extends ChangeNotifier {
  final repo = AuthRepositry2();

  // added cart provider
  Future<int> addToCart(
      String id, Map<String, int> datacart, DateTime date) async {
    try {
      final response = await repo.AddCartProduct(
        data: datacart,
        id: id,
        date: date,
      );

      log(response, name: 'added product');

      if (response['status_code'] == 200) {
        Utils.toastMessage('Added successfully');
        notifyListeners();
        return response['status_code'];
      }
    } catch (e) {
      log('$e error addToCart');
    }

    Utils.toastMessage('Something went wrong');
    return 0;
  }
}
