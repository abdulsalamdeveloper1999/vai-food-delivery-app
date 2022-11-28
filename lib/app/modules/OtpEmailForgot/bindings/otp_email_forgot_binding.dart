import 'package:get/get.dart';

import '../controllers/otp_email_forgot_controller.dart';

class OtpEmailForgotBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OtpEmailForgotController>(
      () => OtpEmailForgotController(),
    );
  }
}
