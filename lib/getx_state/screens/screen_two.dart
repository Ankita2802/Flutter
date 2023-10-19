import 'package:figma/getx_state/get%20height%20width/get.height_width.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                Get.to(const GetxHeightWidth());
                // Get.back();
                // Get.back();
              },
              child: const Text("Go back home screen"),
            ),
          )
        ],
      ),
    );
  }
}
