import 'package:figma/Riverpod/futureprovider/api_call.dart';
import 'package:figma/Riverpod/futureprovider/usermodel.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserGetApi extends StatelessWidget {
  const UserGetApi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FutureProvider Example'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Consumer(
          builder: (context, ref, child) {
            final apiData = ref.watch(todoProvider);

            return apiData.when(
              data: (data) => TodoWidget(todo: data),
              loading: () => const CircularProgressIndicator(),
              error: (error, stackTrace) => Text('Error: $error'),
            );
          },
        ),
      ),
    );
  }
}

class TodoWidget extends StatelessWidget {
  final Todo todo;

  const TodoWidget({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('User ID:  ${todo.userId}'),
          Text('ID:  ${todo.id}'),
          Text('Title:  ${todo.title}'),
          Text('Completed:  ${todo.completed}'),
        ],
      ),
    );
  }
}
