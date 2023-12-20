import 'dart:developer';

import 'package:figma/fluxstore_api_with_riverpod/model/product_model.dart';
import 'package:figma/fluxstore_api_with_riverpod/repositry/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoryProvider = ChangeNotifierProvider<CategoryProvider>((ref) {
  final categoryNotifier = CategoryProvider();
  categoryNotifier.getCategory();
  return categoryNotifier;
});

// final categoryproductProvider = ChangeNotifierProvider<CategoryProvider>((ref) {
//   final categoryNotifier = CategoryProvider();
//   categoryNotifier.getproductitems("default");
//   return categoryNotifier;
// });

class CategoryProvider extends ChangeNotifier {
  final repo = AuthRepositry2();

  List<String> category = [];
  List<String> get cate => category;

  // ignore: non_constant_identifier_names
  List<ProductModel> ProductList = [];

  // Get Category
  Future<void> getCategory() async {
    try {
      final response = await repo.getCategoryApi();
      log(response.toString(), name: 'response getCategory');

      if (response.isNotEmpty) {
        cate.clear();
        for (var item in response) {
          cate.add(item);
        }

        log(cate.toString(),
            name: "categoryParticular list"); // Add items to the category list
        notifyListeners(); // Clear existing data
      } else {
        throw Exception('Failed to load categories Product');
      }
    } catch (e) {
      log(e.toString(), name: 'error get Categoryproduct');
    }
  }

  Future<bool> getproductitems(String categoryType) async {
    try {
      final response = await repo.getCategoryproductApi(categoryType);
      log(response.toString(), name: 'response getCategory');
      ProductList.clear();
      ProductList = (response as List<dynamic>)
          .map((item) => ProductModel.fromJson(item))
          .toList();
  

      notifyListeners();
      return true;
    } catch (error) {
      throw Exception('Failed to load categories: $error');
    }
  }
}
