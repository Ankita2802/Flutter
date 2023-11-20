import 'package:figma/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounteriverExample extends ConsumerWidget {
  const CounteriverExample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // print('rebuild');
    // final count = ref.watch(countprovider);
    final count = ref.watch(countProviderdemo);
    ref.listen(
        countProviderdemo,
        (previous, next) => {
              if (next == 5)
                {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("the number is $next")))
                },
            });
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Example'),
        centerTitle: true,
        backgroundColor: Colors.pink,
        actions: [
          IconButton(
            onPressed: () {
              // ref.invalidate(countprovider);
              ref.refresh(countProviderdemo);
            },
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(count.toString()),
            ),
            GestureDetector(
              onTap: () {
                ref.read(countprovider.notifier).state--;
              },
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey.shade200,
                ),
                child: Center(
                  child: Icon(
                    Icons.minimize,
                    size: 30,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ref.read(countprovider.notifier).state++;
          // ref.read(countprovider.notifier).update((state) => state + 1);
          ref.read(countProviderdemo.notifier).incremnetcount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
