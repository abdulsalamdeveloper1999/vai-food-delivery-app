import 'package:food/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashoneController extends GetxController {
  //TODO: Implement SplashoneController

  final count = 0.obs;
  @override
  void onInit() async {
    super.onInit();
    await Future.delayed(Duration(seconds: 2));
    Get.offAndToNamed(Routes.SPLASHTWO);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
