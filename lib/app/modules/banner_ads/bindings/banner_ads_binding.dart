import 'package:get/get.dart';

import '../controllers/banner_ads_controller.dart';

class BannerAdsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BannerAdsController>(
      () => BannerAdsController(),
    );
  }
}
