import 'package:get/get.dart';

import '../controllers/matser_list_controller.dart';

class MatserListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MatserListController>(
      () => MatserListController(),
    );
  }
}
