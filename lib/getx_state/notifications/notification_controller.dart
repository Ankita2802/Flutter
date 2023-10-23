import 'package:get/get.dart';

class NotificationController extends GetxController {
  RxBool notifications = false.obs;
  setnotification(bool value) {
    notifications.value = value;
  }
}
