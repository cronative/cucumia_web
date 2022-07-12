import 'package:cucumia_admin/models/ModelProvider.dart';
import 'package:cucumia_admin/models/Product.dart';
import 'package:cucumia_admin/services/data_service.dart';
import 'package:get/get.dart';

class HotDealsController extends GetxController {
  final isLoading = false.obs;

  final RxList<Product> allProducts = <Product>[].obs;
  final RxList<Product> hotdealProducts = <Product>[].obs;
  final RxBool productdeleting = false.obs;
  final DataService _dataService = DataService.to;
  final RxString shopId = ''.obs;
  @override
  void onInit() {
    isLoading(true);
    _fetchData();
    super.onInit();
  }

  void _fetchData() async {
    // if (_dataService.client != null) {
    await getshopId();
    await fetchAllHotdealProducts();
    // }
  }

  Future<void> getshopId() async {
    await DataService.to.fetchShopId().then((value) => shopId(value));
  }

  Future<void> fetchAllHotdealProducts() async {
    print("\n");
    print("Fetching Hot Deal Products ");
    hotdealProducts.clear();
    isLoading(true);
    await Future.delayed(1000.milliseconds, () async {
      await _dataService
          .fetchAllProductsaccordingProductType(shopId: shopId.value, deal_type: ProductDealType.HOTDEALS)
          .then((List<Product> _response) {
        hotdealProducts.addAll(_response);
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
  }
}
