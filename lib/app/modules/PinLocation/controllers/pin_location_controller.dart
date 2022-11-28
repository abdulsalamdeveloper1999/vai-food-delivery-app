import 'package:get/get.dart';

class PinLocationController extends GetxController {
  //TODO: Implement PinLocationController

  var selectedIndex = -1;
  void address(var index) {
    selectedIndex = index;
    update();
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
