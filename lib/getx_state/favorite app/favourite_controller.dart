import 'package:get/get.dart';

class FavoriteController extends GetxController {
  RxList fruitlist = ['orange', 'banana', 'greps', 'apple'].obs;
  RxList tempfruitlist = [].obs;
  addToFavorite(String value) {
    tempfruitlist.add(value);
  }

  removeToFavorite(String value) {
    tempfruitlist.remove(value);
  }
}
