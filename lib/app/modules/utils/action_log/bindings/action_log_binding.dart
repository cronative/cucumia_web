import 'package:get/get.dart';

import '../controllers/action_log_controller.dart';

class ActionLogBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ActionLogController>(
      () => ActionLogController(),
    );
  }
}
