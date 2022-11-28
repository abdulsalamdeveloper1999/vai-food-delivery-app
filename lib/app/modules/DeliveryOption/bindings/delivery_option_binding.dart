import 'package:get/get.dart';

import '../controllers/delivery_option_controller.dart';

class DeliveryOptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DeliveryOptionController>(
      () => DeliveryOptionController(),
    );
  }
}
