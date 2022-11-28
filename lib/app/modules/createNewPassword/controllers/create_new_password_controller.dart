import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CreateNewPasswordController extends GetxController {
  //TODO: Implement CreateNewPasswordController
  TextEditingController passController = TextEditingController();
  TextEditingController confirmpassController = TextEditingController();

  bool obsecure = true;
  bool obsecureTwo = true;

  void showObsecureText() {
    obsecure = !obsecure;
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
    passController.dispose();
    confirmpassController.dispose();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
