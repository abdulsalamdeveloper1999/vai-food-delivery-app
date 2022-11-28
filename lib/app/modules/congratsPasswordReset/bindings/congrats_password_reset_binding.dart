import 'package:get/get.dart';

import '../controllers/congrats_password_reset_controller.dart';

class CongratsPasswordResetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CongratsPasswordResetController>(
      () => CongratsPasswordResetController(),
    );
  }
}
