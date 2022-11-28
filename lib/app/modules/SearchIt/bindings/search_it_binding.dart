import 'package:get/get.dart';

import '../controllers/search_it_controller.dart';

class SearchItBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchItController>(
      () => SearchItController(),
    );
  }
}
