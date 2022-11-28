import 'package:get/get.dart';

import '../controllers/splashtwo_controller.dart';

class SplashtwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashtwoController());
  }
}
