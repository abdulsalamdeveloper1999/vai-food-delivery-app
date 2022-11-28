import 'package:get/get.dart';

class FilterController extends GetxController {
  //TODO: Implement FilterController
  var priceselectedIndex = -1;

  void pricechangeColor(var index) {
    priceselectedIndex = index;
    update();
  }

  var selectedIndex = -1;

  void changeColor(var index) {
    selectedIndex = index;
    update();
  }

  var status = false;
  void changeSwitch(var value) {
    status = value;
    update();
  }

  var statusTwo = false;
  void changeSecondSwitch(var value) {
    statusTwo = value;
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
