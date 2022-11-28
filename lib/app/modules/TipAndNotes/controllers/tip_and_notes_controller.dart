import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TipAndNotesController extends GetxController {
  //TODO: Implement TipAndNotesController
  TextEditingController addNotesController = TextEditingController();
  var selectedIndex = -1;

  void change(var index) {
    selectedIndex = index;
    update();
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onDispose() {
    super.dispose();
    addNotesController.dispose();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
