import 'package:get/get.dart';

import '../controllers/master_card_details_controller.dart';

class MasterCardDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MasterCardDetailsController>(
      () => MasterCardDetailsController(),
    );
  }
}
