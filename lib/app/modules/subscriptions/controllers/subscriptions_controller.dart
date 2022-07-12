import 'package:cucumia_admin/app/data/demo_data.dart';
import 'package:cucumia_admin/models/ModelProvider.dart';
import 'package:cucumia_admin/services/auth_service.dart';
import 'package:cucumia_admin/services/data_service.dart';
import 'package:get/get.dart';

class SubscriptionsController extends GetxController {
  //TODO: Implement SubscriptionsController
  final RxList<SubscriptionLogs> subscriptionData = RxList<SubscriptionLogs>();
  final DataService _dataService = DataService.to;
  final count = 0.obs;
  final isLoading = false.obs;
  final RxBool isBuying = false.obs;
  final RxString merchantId = "".obs;
  final RxBool buyYearlyShopSubcription = false.obs;
  final RxBool payView = false.obs;
  final RxInt noOfSubscriptions = 0.obs;
  final RxBool isEditing = false.obs;

  final RxList<Plan> allPlans = DemoData.demoPlans.obs;
  @override
  void onInit() {
    isLoading(true);
    _fetchData();
    super.onInit();
  }

  void _fetchData() async {
    // if (_dataService.client != null) {
    await getmerchantId();
    await fetchSubcriptionslogs(merchantId.value);
    // }
  }

  void paymentView() {
    payView.toggle();
    noOfSubscriptions();
    isBuying.toggle();
  }

  Future<void> getmerchantId() async {
    merchantId(AuthService.to.user.value!.id);
  }

  Future<void> fetchSubcriptionslogs(String mId) async {
    print("Fetching Subcriptions logs ");
    subscriptionData.clear();
    isLoading(true);
    await Future.delayed(1000.milliseconds, () async {
      await _dataService
          .fetchSubcriptionslogs(id: mId)
          .then((List<SubscriptionLogs> _response) {
        subscriptionData.addAll(_response);
      });

      isLoading(false);
    });
  }

  Future<void> createNewSubcription() async {
    isEditing.toggle();
    String Mid = AuthService.to.user.value!.id;
    int sc = noOfSubscriptions.value;
    await Future.delayed(1000.milliseconds, () async {
      await _dataService
          .updateShopSubCount(id: Mid, shopC: sc, magC: 0)
          .then((_response) {
        print(_response);
      });

      isLoading(false);
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
