import 'package:get/get.dart';

import '../controllers/custom_amount_controller.dart';

class CustomAmountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomAmountController>(
      () => CustomAmountController(),
    );
  }
}
