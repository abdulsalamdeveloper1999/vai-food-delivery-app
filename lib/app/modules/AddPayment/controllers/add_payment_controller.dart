import 'package:flutter/cupertino.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:get/get.dart';

class AddPaymentController extends GetxController {
  //TODO: Implement AddPaymentController
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController cvcController = TextEditingController();
  TextEditingController expiryController = TextEditingController();
  TextEditingController expcontroller = MaskedTextController(mask: '00/00');

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onDispose() {
    nameController.dispose();
    numberController.dispose();
    cvcController.dispose();
    expiryController.dispose();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
