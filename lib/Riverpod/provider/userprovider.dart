import 'package:flutter_riverpod/flutter_riverpod.dart';

class User {
  String name;
  DateTime datetime;
  User({required this.name, required this.datetime});
}

class UserProvider extends StateNotifier<User> {
  UserProvider() : super(User(name: 'ankita', datetime: DateTime.now()));
  void setname(String name) {
    state = User(name: name, datetime: state.datetime);
  }
}
