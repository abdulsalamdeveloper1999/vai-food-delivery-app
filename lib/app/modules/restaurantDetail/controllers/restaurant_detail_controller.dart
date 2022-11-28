import 'package:get/get.dart';

class RestaurantDetailController extends GetxController {
  //TODO: Implement RestaurantDetailController

  bool click = false;
  void changeIcon() {
    click = !click;
    update();
  }

  var selectedIndexPopular = -1;
  void popularContainerColor(index) {
    selectedIndexPopular = index;
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

  void deccrement() {
    if (count != 0) {
      count.value--;
    } else {
      count == 0;
    }
  }
}
