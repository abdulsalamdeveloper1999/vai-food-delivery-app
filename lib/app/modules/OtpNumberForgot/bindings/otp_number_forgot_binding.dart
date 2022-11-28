import 'package:get/get.dart';

import '../controllers/otp_number_forgot_controller.dart';

class OtpNumberForgotBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OtpNumberForgotController>(
      () => OtpNumberForgotController(),
    );
  }
}
