import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final apiprovider = FutureProvider.autoDispose((ref) async {
  final response =
      await http.get(Uri.parse("https://jsonplaceholder.typicode.com/todos/1"));
  if (response.statusCode == 200) {
    return response.body;
  } else {
    throw Exception('Failed to load data');
  }
});
