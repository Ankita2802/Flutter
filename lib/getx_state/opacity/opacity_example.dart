import 'package:figma/getx_state/opacity/opacity_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OpacityExample extends StatefulWidget {
  const OpacityExample({super.key});

  @override
  State<OpacityExample> createState() => _OpacityExampleState();
}

class _OpacityExampleState extends State<OpacityExample> {
  final OpacityController opacityController = Get.put(OpacityController());
  double opacity = .4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Opacity Example'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Obx(
            () => Container(
              height: 200,
              width: 200,
              color: Colors.red.withOpacity(
                opacityController.opacity.toDouble(),
              ),
            ),
          ),
          Obx(
            () => Slider(
              value: opacityController.opacity.toDouble(),
              onChanged: (value) {
                opacityController.setopacityvalue(value);
              },
            ),
          )
        ],
      ),
    );
  }
}
