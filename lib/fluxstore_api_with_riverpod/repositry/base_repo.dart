import 'dart:convert';
import 'dart:developer';

import 'package:figma/fluxstore_api_with_riverpod/utills/api_urls.dart';
import 'package:figma/fluxstore_api_with_riverpod/utills/my_shareprefernce.dart';
import 'package:http/http.dart' as http;

class BaseRepository2 {
  // For POST request
  Future<http.Response> postHttp({
    required Map<String, dynamic> data,
    required String api,
    bool token = false,
  }) async {
    String? accessToken;
    final url = ApiUrls.baseUrl + api;
    log(url, name: 'postHttp');
    log(data.toString(), name: '$api data');
    if (token) {
      accessToken =
          await MySharedPreferences.instance.getStringValue("access_token");
      log(accessToken.toString(), name: "access_token");
    }

    final response = await http.post(
      Uri.parse(url),
      headers: accessToken == null
          ? {'Content-Type': 'application/json'}
          : {
              'Content-Type': 'application/json',
              'Authorization': 'Bearer $accessToken'
            },
      body: json.encode(data),
    );
    log(response.statusCode.toString());
    return response;
  }

  
  Future<http.Response> getHttp({
    required String api,
    bool token = false,
  }) async {
    String? accessToken;
    final url = ApiUrls.baseUrl + api;
    log(url, name: 'getHttp');
    if (token) {
      accessToken =
          await MySharedPreferences.instance.getStringValue("access_token");
      log(accessToken.toString(), name: "access_token");
    }

    final response = await http.get(
      Uri.parse(url),
      headers: accessToken == null
          ? {'Content-Type': 'application/json'}
          : {
              'Content-Type': 'application/json',
              'Authorization': 'Bearer $accessToken'
            },
    );

    log(response.statusCode.toString());
    return response;
  }
}
