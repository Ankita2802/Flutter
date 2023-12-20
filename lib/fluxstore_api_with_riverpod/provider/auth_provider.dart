import 'dart:developer';

import 'package:figma/fluxstore_api_with_riverpod/repositry/auth_repo.dart';
import 'package:figma/provider/utils/utils.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  AuthRepositry2 authRepo = AuthRepositry2();

  String _username = "";
  String get userName => _username;
  set setuserName(String val) => _username = val;

  String _password = "";
  String get password => _password;
  set setpassword(String val) => _password = val;

  Future<bool> login(String userName, String password) async {
    try {
      Map<String, dynamic> data = {
        'username': userName,
        "password": password,
      };
      log('Username: ${data['username']}');
      // ignore: unused_local_variable
      final response = await authRepo.login(data);
      Utils.toastMessage('Login Successfully!!');
      return true;
    } catch (e) {
      Utils.toastMessage('something went wrong!!');
    }
    return false;
  }
}
