import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Screenone extends StatefulWidget {
  void name;
  Screenone({super.key, this.name});

  @override
  State<Screenone> createState() => _ScreenoneState();
}

class _ScreenoneState extends State<Screenone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Get.arguments[0] + 'First screen '),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
                onPressed: () {
                  // Get.to(SecondScreen());
                  Get.toNamed('/screentwo');
                },
                child: const Text('Go to second screen')),
          ),
        ],
      ),
    );
  }
}
