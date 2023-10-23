import 'package:figma/getx_state/coutnter_exam.dart/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  final CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Example'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Obx(() {
              return Text(
                controller.count.toString(),
                style: const TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.w200),
              );
            }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.incrementcounter();
          // print('${counter}');
          // counter++;
          // setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
