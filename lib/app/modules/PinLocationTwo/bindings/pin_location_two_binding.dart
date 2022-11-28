import 'package:get/get.dart';

import '../controllers/pin_location_two_controller.dart';

class PinLocationTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PinLocationTwoController>(
      () => PinLocationTwoController(),
    );
  }
}
