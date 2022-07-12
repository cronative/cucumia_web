import 'package:cucumia_admin/app/data/demo_data.dart';
import 'package:cucumia_admin/app/modules/utils/action_log/models/activity_log_model.dart';
import 'package:cucumia_admin/models/ActivityLog.dart';
import 'package:cucumia_admin/models/Product.dart';
import 'package:cucumia_admin/services/data_service.dart';
import 'package:get/get.dart';

class ActionLogController extends GetxController {
  final RxList<ActivityLog> activityData = <ActivityLog>[].obs;
  static final DataService _dataService = DataService.to;

  Future<void> activityDataList() async {
    activityData.clear();
    await Future.delayed(1000.milliseconds, () async {
      await _dataService.fetchActivityLog().then((value) {
        activityData(value);

        print(activityData.length);
      });
    });
    Get.log(activityData.toString());
  }

  void _fetchData() async {
    await activityDataList();
  }

  @override
  void onInit() {
    _fetchData();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
