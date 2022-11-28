import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  double height = 0;
  void changeHeight() {
    if (height == 0) {
      height = height + 100;
    } else if (height == 100) {
      height = height - 100;
    }
    update();
  }

  void changeGesture() {
    if (height == 100) {
      height = height - 100;
    }
    update();
  }

  var clickNearby = false;
  void addtofav(index) {
    clickNearby = !clickNearby;
    update();
  }

  var selectedIndexPopular = -1;
  void popularContainerColor(index) {
    selectedIndexPopular = index;
    update();
  }

  var selectedIndexCategories = -1;
  void containerColor(index) {
    selectedIndexCategories = index;
    update();
  }

  var favIndex = -1;

  void addFac(index) {
    favIndex = index;
    update();
  }

  String? selectedValue;
  void changeDropDown(var value) {
    selectedValue = value;
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
