import 'package:flutter_riverpod/flutter_riverpod.dart';

class Countprovider extends StateNotifier<int> {
  Countprovider() : super(0);
  void incremnetcount() {
    state++;
  }
}
