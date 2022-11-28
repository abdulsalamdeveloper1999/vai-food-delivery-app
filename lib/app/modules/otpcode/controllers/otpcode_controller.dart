import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OtpcodeController extends GetxController {
  //TODO: Implement OtpcodeController

  final _pinPutController = TextEditingController();

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
