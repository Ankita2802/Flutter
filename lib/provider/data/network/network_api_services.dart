// ignore_for_file: unused_local_variable

import 'dart:convert';
import 'dart:io';
// import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'package:figma/provider/data/app_excepetion.dart';
import 'package:figma/provider/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  @override
  Future getGetApiResponse(String url) async {
    dynamic responsejson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 5));
      responsejson = returnResponse(response);
    } on SocketException {
      throw FetchDataExcepetions('No Internet Connections');
    }
    return responsejson;
  }

  @override
  Future getPostApiResponse(String url, dynamic data) async {
    dynamic responsejson;
    try {
      Response response = await post(Uri.parse(url), body: data)
          .timeout(const Duration(seconds: 10));
      responsejson = returnResponse(response);
    } on SocketException {
      throw FetchDataExcepetions('No Internet Connections');
    }
    return responsejson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responsejson = jsonDecode(response.body);
        return responsejson;
      case 400:
        throw BadRequestExcepetions(response.body.toString());
      case 500:
      case 404:
        throw UnauthorizedExcepetions(response.body.toString());
      default:
        // ignore: prefer_adjacent_string_concatenation
        throw FetchDataExcepetions('Error occured while communicating server' +
            'with status code' +
            response.statusCode.toString());
    }
  }
}
