import 'package:get/get.dart';

import '../controllers/signupwithphonenumber_controller.dart';

class SignupwithphonenumberBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupwithphonenumberController>(
      () => SignupwithphonenumberController(),
    );
  }
}
