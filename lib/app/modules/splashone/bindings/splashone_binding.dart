import 'package:get/get.dart';

import '../controllers/splashone_controller.dart';

class SplashoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashoneController());
  }
}
