import 'package:figma/provider/data/network/network_api_services.dart';
import 'package:figma/res/components/app_url.dart';
// import 'package:flutter/material.dart';

import '../data/network/base_api_services.dart';

class AuthRepositry {
  BaseApiServices apiservices = NetworkApiServices();

  Future<dynamic> loginApi(dynamic data) async {
    try {
      dynamic response =
          await apiservices.getPostApiResponse(AppUrl.loginUrl, data);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> signuppi(dynamic data) async {
    try {
      dynamic response =
          await apiservices.getPostApiResponse(AppUrl.registerUrl, data);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
