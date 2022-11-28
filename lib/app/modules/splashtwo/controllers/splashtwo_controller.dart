import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SplashtwoController extends GetxController {
  //TODO: Implement SplashtwoController

  final count = 0.obs;
  void onInit() async {
    super.onInit();
    await Future.delayed(Duration(seconds: 2));
    Get.offAndToNamed(Routes.ONBOARDING);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
