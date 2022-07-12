import 'package:cucumia_admin/models/Product.dart';
import 'package:cucumia_admin/services/data_service.dart';
import 'package:get/get.dart';

class ScheduledProductsController extends GetxController {
  final isLoading = false.obs;

  final RxList<Product> allProducts = <Product>[].obs;
  final RxList<Product> scheduledProducts = <Product>[].obs;
  final RxBool isLoadingForScheduled = false.obs;
  final DataService _dataService = DataService.to;
  final RxString shopId = ''.obs;
  final RxBool productdeleting = false.obs;
  @override
  void onInit() {
    isLoading(true);
    _fetchData();
    super.onInit();
  }

  Future<void> getshopId() async {
    await DataService.to.fetchShopId().then((value) => shopId(value));
  }

  void _fetchData() async {
    // if (_dataService.client != null) {
    await getshopId();
    await fetchAllScheduledProducts();
    // }
  }

  Future<void> fetchAllScheduledProducts() async {
    print("\n");
    print("Fetching Scheduled Products ");
    scheduledProducts.clear();
    isLoading(true);
    await Future.delayed(1000.milliseconds, () async {
      await _dataService.fetchAllScheduledProducts(shopId.value).then((List<Product> _response) {
        scheduledProducts.addAll(_response);
      });

      isLoading(false);
    });
  }

  void publishNow(String productId) {
    _dataService.publishNow(productId);
    isLoading(true);
    onInit();
  }

  Future<void> deleteproduct(String id) async {
    productdeleting(true);
    await _dataService.productDelete(id: id).then((value) => productdeleting(!value));
    onInit();
  }
}
