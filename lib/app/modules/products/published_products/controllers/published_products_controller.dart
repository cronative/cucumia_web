import 'package:cucumia_admin/models/Product.dart';
import 'package:cucumia_admin/services/data_service.dart';
import 'package:get/get.dart';

class PublishedProductsController extends GetxController {
  final isLoading = false.obs;
  final RxBool productdeleting = false.obs;
  final RxList<Product> allProducts = <Product>[].obs;
  final RxList<Product> publishedProducts = <Product>[].obs;
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
    await _fetchAllProducts();
    fetchAllPublishedProducts();
    // }
  }

  Future<void> getshopId() async {
    await DataService.to.fetchShopId().then((value) => shopId(value));
  }

  Future<void> _fetchAllProducts() async {
    allProducts.clear();
    await Future.delayed(1000.milliseconds, () async {
      await _dataService.fetchAllProducts().then((List<Product> _productResponse) {
        allProducts.addAll(_productResponse);

        // print(allProducts);
      });

      isLoading(false);
    });
  }

  Future<void> fetchAllPublishedProducts() async {
    print("\n");
    print("Fetching Already Published magazines ");
    publishedProducts.clear();
    isLoading(true);
    await Future.delayed(1000.milliseconds, () async {
      await _dataService.fetchAllPublishedProducts(shopId.value).then((List<Product> _response) {
        publishedProducts.addAll(_response);
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
