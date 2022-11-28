import 'package:get/get.dart';

import '../controllers/pin_location_controller.dart';

class PinLocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PinLocationController>(
      () => PinLocationController(),
    );
  }
}
