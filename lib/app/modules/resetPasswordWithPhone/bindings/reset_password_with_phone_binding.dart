import 'package:get/get.dart';

import '../controllers/reset_password_with_phone_controller.dart';

class ResetPasswordWithPhoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ResetPasswordWithPhoneController>(
      () => ResetPasswordWithPhoneController(),
    );
  }
}
