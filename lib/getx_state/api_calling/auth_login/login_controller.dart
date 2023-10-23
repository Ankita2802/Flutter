import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailcontroller = TextEditingController().obs;
  final passwordcontroller = TextEditingController().obs;
  RxBool loading = false.obs;
  void loginApi() async {
    loading.value = true;
    try {
      const url = "https://reqres.in/api/login";
      final response = await post(
        Uri.parse(url),
        body: {
          "email": emailcontroller.value.text,
          "password": passwordcontroller.value.text,
        },
      );
      var data = jsonDecode(response.body);

      print(response.statusCode);
      print(data);
      if (response.statusCode == 200) {
        loading.value = false;
        Get.snackbar('Login succesfully', 'congress');
      } else {
        Get.snackbar('Login unsuccesfully', data['error']);
        loading.value = false;
      }
    } catch (e) {
      Get.snackbar('Excepetions', e.toString());
      loading.value = false;
    }
  }
}
