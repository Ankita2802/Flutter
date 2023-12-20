import 'dart:convert';

import 'package:figma/Riverpod/futureprovider/usermodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:http/http.dart' as http;

final todoProvider = FutureProvider.autoDispose<Todo>((ref) async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/2'));
  if (response.statusCode == 200) {
    // print('response is ____________${response.body}');
    final Map<String, dynamic> data = json.decode(response.body);
    // print('response  jsondata is ____________${data}');
    final Todo todo = Todo.fromJson(data);
    return todo;
  } else {
    throw Exception('Failed to load todo');
  }
});
