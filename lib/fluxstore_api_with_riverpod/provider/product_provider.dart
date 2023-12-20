import 'dart:developer';

import 'package:figma/fluxstore_api_with_riverpod/model/product_model.dart';
import 'package:figma/fluxstore_api_with_riverpod/repositry/auth_repo.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productProvider = ChangeNotifierProvider<ProductProvider>((ref) {
  final categoryNotifier = ProductProvider();
  categoryNotifier.getproductitems();
  return categoryNotifier;
});

final sortproductProvider = ChangeNotifierProvider<ProductProvider>((ref) {
  final categoryNotifier = ProductProvider();
  categoryNotifier.getSortProducts();
  return categoryNotifier;
});

final particularproductProvider =
    ChangeNotifierProvider<ProductProvider>((ref) {
  final categoryNotifier = ProductProvider();
  return categoryNotifier;
});

bool _isAsc = false;
bool get isAsc => _isAsc;

// String _productid = "";
// String get productid=> _productid;
// set setpassword(String val) => _productid= val;

class ProductProvider extends ChangeNotifier {
  final repo = AuthRepositry2();

  List<ProductModel> productList = [];

  Future<bool> getSortProducts() async {
    try {
      final parametr = isAsc ? "desc" : "asc";
      final response = await repo.sortProducts(parametr);
      log(response.toString(), name: 'response get sort Product');
      productList.clear();
      productList = (response as List<dynamic>)
          .map((item) => ProductModel.fromJson(item))
          .toList();
      notifyListeners();

      return true;
    } catch (error) {
      throw Exception('Failed to load categories: $error');
    }
  }

  void onChangeAsc() {
    _isAsc = !_isAsc;
    getSortProducts();
  }

  Future<bool> getproductitems() async {
    try {
      final response = await repo.getAllProduct();
      log(response.toString(), name: 'response getProduct');
      productList.clear();
      productList = (response as List<dynamic>)
          .map((item) => ProductModel.fromJson(item))
          .toList();
      notifyListeners();
      return true;
    } catch (error) {
      throw Exception('Failed to load categories: $error');
    }
  }

  Future<bool> getparticularitems(String productid) async {
    try {
      final response = await repo.getParticularProduct(productid);
      log(response.toString(), name: 'response get Product item');
      productList.clear();
      productList = (response as List<dynamic>)
          .map((item) => ProductModel.fromJson(item))
          .toList();
      notifyListeners();
      return true;
    } catch (error) {
      throw Exception('Failed to load categories: $error');
    }
  }
}
