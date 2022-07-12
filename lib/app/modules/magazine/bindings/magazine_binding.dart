import 'package:get/get.dart';

import '../controllers/magazine_controller.dart';

class MagazineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MagazineController>(
      () => MagazineController(),
    );
  }
}
