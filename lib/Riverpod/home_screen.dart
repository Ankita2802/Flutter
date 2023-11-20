import 'package:figma/Riverpod/changenotifier/userchange_screen.dart';
import 'package:figma/Riverpod/statenotifier/count_ex.dart';
import 'package:figma/Riverpod/stateful.dart';
import 'package:figma/Riverpod/statenotifier/userdertailscreen.dart';
import 'package:figma/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeRiverpodScreen extends ConsumerWidget {
  const HomeRiverpodScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(nameprovider);
    final hello = ref.watch(helloworldprovider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Home screen'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(78, 233, 30, 98),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(name),
            Text(hello),
            Consumer(builder: (context, ref, name) {
              final name = ref.watch(nameprovider);
              return Text(name);
            }),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const StateHome()));
              },
              child: const Text("go to stateful widget"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CounteriverExample()));
              },
              child: const Text("go to Counter Example"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UserDetailScreen()));
              },
              child: const Text("go to User statenotifier screen"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UserChangeScreen()));
              },
              child: const Text("go to User Changenotifier screen"),
            ),
          ],
        ),
      ),
    );
  }
}
