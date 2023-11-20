import 'dart:convert';
import 'package:figma/Riverpod/Api_calling/usermodel.dart';
import 'package:http/http.dart';

class Apiservices {
  User? userModel;
  final url = "https://reqres.in/api/users?page=1";
  Future getuserdata() async {
    final respose = await get(Uri.parse(url));
    // print(respose);
    if (respose.statusCode == 200) {
      final result = jsonDecode(respose.body);
      userModel = User.fromJson(result['data']);
    } else {
      throw Exception(respose.reasonPhrase);
    }
  }
}
