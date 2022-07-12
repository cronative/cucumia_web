import 'dart:convert';

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:csv/csv.dart';
import 'package:cucumia_admin/models/ModelProvider.dart';
import 'package:cucumia_admin/services/auth_service.dart';
import 'package:cucumia_admin/services/data_service.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';

class MatserListController extends GetxController {
  final isLoading = false.obs;

  int totalProducts = 0;
  int productsPerPage = 6;
  int currentPage = 0;
  final RxList<Product> allProducts = <Product>[].obs;
  final RxBool CreatingNewProduct = false.obs;
  final RxBool showProductUploadForm = false.obs;
  final RxBool showBulkProductUploadForm = false.obs;
  final DataService _dataService = DataService.to;
  final RxBool GreenDealChecked = false.obs;
  final RxBool RedDealChecked = false.obs;
  final RxBool hotDealChecked = false.obs;
  final RxBool ScheduleisChecked = false.obs;
  final RxBool PublishedisChecked = false.obs;
  final RxBool hotdealisChecked = false.obs;
  final RxBool isPicUploading0 = false.obs;
  final RxBool isPicUploading1 = false.obs;
  final RxBool isPicUploading2 = false.obs;
  final RxBool isPicUploading3 = false.obs;
  final RxString productImageUrl0 = "".obs;
  final RxString productImageUrl1 = "".obs;
  final RxString productImageUrl2 = "".obs;
  final RxString productImageUrl3 = "".obs;
  final Rx<ProductDealType> Dealtype = ProductDealType.GREENDEALS.obs;
  final RxString userImageUrl = "".obs;
  final RxBool isPicUploading = false.obs;
  final RxBool productdeleting = false.obs;
  final AuthService _userService = AuthService.to;
  Rx<Users?> get user => _userService.user.value.obs;
  List<List<dynamic>> rowsAsListOfValues = [[]].obs;
  List<dynamic> ListOfValues = [];
  final RxString shopId = "".obs;
  final RxBool showBulkCSVList = false.obs;
  final FormGroup productAddForm = FormGroup(
    {
      'productname': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'brand': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'category': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'sub_category': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'sku': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'actual_price': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'offer_price': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'discount_price': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'offer_percentage': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'expiry_date': FormControl<DateTime>(
        validators: [
          Validators.required,
        ],
      ),
      'schedule_date': FormControl<DateTime>(
        validators: [
          Validators.required,
        ],
      ),
    },
  );
  final FormGroup productEditForm = FormGroup(
    {
      'product_name': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'product_price': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'offer_price': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'start_date': FormControl<DateTime>(
        validators: [
          Validators.required,
        ],
      ),
      'expiry_date': FormControl<DateTime>(
        validators: [
          Validators.required,
        ],
      ),
      'visibility_date': FormControl<DateTime>(
        validators: [
          Validators.required,
        ],
      ),
    },
  );

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
    await _fetchAllProducts(shopId.value);
    // }
  }

  Future<void> pickImage(RxString imageUrl, RxBool loadingbool) async {
    print('pick image');
    loadingbool(true);
    await _dataService.uploadImage('${user.value!.id}_${DateTime.now().toString()}').then((fireBaseUrl) async {
      // print(value);
      imageUrl(fireBaseUrl);
      loadingbool(false);
      print(fireBaseUrl);
    });
  }

  int pageCount() {
    return (totalProducts / productsPerPage) as int;
  }

  nextPage() {
    if ((currentPage + 1) < pageCount()) {
      currentPage += 1;
    }
  }

  previousPage() {
    //lets not go bellow 0 :-)
    if (currentPage != 0) {
      currentPage -= 1;
    }
  }

  updatepage(int pageNumber) {
    currentPage = pageNumber;
    update();
  }

  Future<void> _fetchAllProducts(String shopid) async {
    allProducts.clear();
    await Future.delayed(1000.milliseconds, () async {
      await _dataService.fetchAllProductsByShop(shopid).then((_productResponse) {
        allProducts.addAll(_productResponse);

        // print(allProducts);
      });

      isLoading(false);
    });
    totalProducts = allProducts.length;
  }

  Future<void> deleteproduct(String id) async {
    productdeleting(true);
    await _dataService.productDelete(id: id).then((value) => productdeleting(!value));
    onInit();
  }

  Future<void> importCSV() async {
    //Pick file
    FilePickerResult? csvFile = await FilePicker.platform.pickFiles(allowedExtensions: ['csv'], type: FileType.custom, allowMultiple: false);
    if (csvFile != null) {
      //decode bytes back to utf8
      print(
          " ${isLoading.value} + ${allProducts.isNotEmpty} + ${CreatingNewProduct.value}  + ${showBulkProductUploadForm.value} + ${showBulkCSVList.value}");
      final bytes = utf8.decode(csvFile.files[0].bytes!);
      //from the csv plugin
      rowsAsListOfValues = const CsvToListConverter().convert(bytes);
      ListOfValues = rowsAsListOfValues;
      print(rowsAsListOfValues);
      // showBulkCSVList.toggle();
    }
  }

  // void createProduct() async {
  //   print("Creating new Product");
  //   TemporalDateTime? date =
  //       TemporalDateTime(productAddForm.value["expiry_date"] as DateTime);
  //   double actualPrice =
  //       double.parse(productAddForm.value["actual_price"].toString());
  //   print("actual price: $actualPrice");
  //   print("object: ${actualPrice.runtimeType}");
  //   double offerPrice =
  //       double.parse(productAddForm.value["offer_price"].toString());
  //   print("actual price: $offerPrice");
  //   print("object: ${offerPrice.runtimeType}");
  //   // isEditing.toggle();
  //   var x = await _dataService.CreateNewGreenProduct(
  //     offer_available_from: date,
  //     shopid: user.value!.id,
  //     offer_ends_on: date,
  //     img_token: productImageUrl0.value,
  //     product_name: productAddForm.value["productname"].toString(),
  //     deal_type: Dealtype.value,
  //     price: actualPrice,
  //     offer_price: offerPrice,
  //     currency_type: currency.value,
  //   );
  //   showProductUploadForm(false);
  //   showBulkProductUploadForm(false);
  //   GreenDealChecked(false);
  //   RedDealChecked(false);
  //   hotDealChecked(false);
  //   productImageUrl0('');
  //   productImageUrl1('');
  //   productImageUrl2('');
  //   productImageUrl3('');
  //   productAddForm.value["actual_price"] = '';
  //   productAddForm.value["offer_price"] = '';
  //   productAddForm.value["expiry_date"] = '';

  //   print("Product Create: " + x.toString());

  //   Get.snackbar(
  //     "New Product Created",
  //     "updated on backend",
  //   );
  // }

  Future<void> editProduct(
      {required String productId,
      required String product_name,
      required double price,
      required TemporalDateTime available_from,
      required TemporalDateTime expires_on,
      required double discount}) async {
    print("productId: ${productId}");
    print("product_name: ${productEditForm.value["product_name"].toString()}");
    print("price: ${productEditForm.value["product_price"].toString()}");
    print("available_from: ${TemporalDateTime(productEditForm.value["visibility_date"] as DateTime)}");
    print("expires_on: ${TemporalDateTime(productEditForm.value["expiry_date"] as DateTime)}");
    print("discount: ${productEditForm.value["offer_price"].toString()}");
    TemporalDateTime visible_date = TemporalDateTime(productEditForm.value["visibility_date"] as DateTime);
    TemporalDateTime expire_date = TemporalDateTime(productEditForm.value["expiry_date"] as DateTime);
    var x = await _dataService.updateProductData(
      id: productId,
      product_name: productEditForm.value["product_name"].toString().isNotEmpty ? productEditForm.value["product_name"].toString() : product_name,
      price: productEditForm.value["product_price"].toString().isNotEmpty ? double.parse(productEditForm.value["product_price"].toString()) : price,
      discount: productEditForm.value["offer_price"].toString().isNotEmpty ? double.parse(productEditForm.value["offer_price"].toString()) : discount,
      available_from: productEditForm.value["visibility_date"].toString().isNotEmpty ? visible_date : available_from,
      expire_on: productEditForm.value["expiry_date"].toString().isNotEmpty ? expire_date : available_from,
    );
  }

  void publishNow(String productId) {
    _dataService.publishNow(productId);
    isLoading(true);
    onInit();
  }
}
