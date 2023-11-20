import 'dart:convert';

import 'package:figma/Riverpod/Api_calling/api_service.dart';
import 'package:figma/Riverpod/Api_calling/usermodel.dart';
import 'package:figma/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';

class StateHome extends ConsumerStatefulWidget {
  const StateHome({Key? key}) : super(key: key);

  @override
  StateHomeState createState() => StateHomeState();
}

class StateHomeState extends ConsumerState<StateHome> {
  @override
  void initState() {
    // TODO: implement initState
    final namepr = ref.read(helloworldprovider);
    print(namepr);
    getuserdata();
    super.initState();
    Apiservices();
  }

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

  @override
  Widget build(BuildContext context) {
    final name = ref.watch(nameprovider);
    final namepr = ref.watch(helloworldprovider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('stateful widget in riverpod'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Text(name),
          Text(namepr),
        ],
      ),
    );
  }
}
