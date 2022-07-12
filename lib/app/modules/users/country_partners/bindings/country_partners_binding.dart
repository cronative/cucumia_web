import 'package:get/get.dart';

import '../controllers/country_partners_controller.dart';

class CountryPartnersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CountryPartnersController>(
      () => CountryPartnersController(),
    );
  }
}
