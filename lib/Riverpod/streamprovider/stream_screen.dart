import 'package:figma/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StreanScreen extends ConsumerWidget {
  const StreanScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final streamdata = ref.watch(streamprovider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Strean prvoider example'),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
      ),
      body: streamdata.when(
          data: (data) => Center(
          child: Text(
          data.toString(),
            style: const TextStyle(fontSize: 20.0),
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Text('Error: $error'),
      ),
    );
  }
}
