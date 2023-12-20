import 'package:figma/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StateHome extends ConsumerStatefulWidget {
  const StateHome({Key? key}) : super(key: key);

  @override
  StateHomeState createState() => StateHomeState();
}

class StateHomeState extends ConsumerState<StateHome> {
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
