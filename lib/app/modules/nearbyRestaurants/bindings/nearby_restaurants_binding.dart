import 'package:get/get.dart';

import '../controllers/nearby_restaurants_controller.dart';

class NearbyRestaurantsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NearbyRestaurantsController>(
      () => NearbyRestaurantsController(),
    );
  }
}
