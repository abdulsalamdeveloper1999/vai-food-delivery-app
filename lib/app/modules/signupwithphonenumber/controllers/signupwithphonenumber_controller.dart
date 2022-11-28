import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupwithphonenumberController extends GetxController {
  //TODO: Implement SignupwithphonenumberController
  TextEditingController phonenumberController = TextEditingController();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onDispose() {
    super.onReady();
    phonenumberController.dispose();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
