import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class GetxHeightWidth extends StatefulWidget {
  const GetxHeightWidth({super.key});

  @override
  State<GetxHeightWidth> createState() => _GetxHeightWidthState();
}

class _GetxHeightWidthState extends State<GetxHeightWidth> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx height width state'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Container(
            height: Get.height * .3,
            width: Get.width * .7,
            color: Colors.green,
            child: const Center(
              child: Text("green Container"),
            ),
          ),
          Container(
            height: Get.height * .3,
            width: Get.width * .7,
            color: Colors.red,
            child: const Center(
              child: Text("red Container"),
            ),
          ),
        ],
      ),
    );
  }
}
