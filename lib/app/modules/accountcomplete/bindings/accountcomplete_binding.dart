import 'package:get/get.dart';

import '../controllers/accountcomplete_controller.dart';

class AccountcompleteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountcompleteController>(
      () => AccountcompleteController(),
    );
  }
}
