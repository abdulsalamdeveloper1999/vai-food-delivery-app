import 'package:get/get.dart';

import '../controllers/tip_and_notes_controller.dart';

class TipAndNotesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TipAndNotesController>(
      () => TipAndNotesController(),
    );
  }
}
