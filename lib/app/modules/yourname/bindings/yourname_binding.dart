import 'package:get/get.dart';

import '../controllers/yourname_controller.dart';

class YournameBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<YournameController>(
      () => YournameController(),
    );
  }
}
