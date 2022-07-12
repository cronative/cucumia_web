import 'dart:convert';
import 'dart:typed_data';

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:cucumia_admin/models/ModelProvider.dart';
import 'package:cucumia_admin/services/auth_service.dart';
import 'package:cucumia_admin/services/data_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';
import 'package:file_picker/file_picker.dart';

import 'package:csv/csv.dart';
import 'package:uuid/uuid.dart';

class ProductsListingController extends GetxController {
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
      'offer_percentage': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'currency_type': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      //Fresh Untill date for green Deal & End Date for Hot Deal
      'expiry_date': FormControl<DateTime>(
        validators: [
          Validators.required,
        ],
      ),
      //Fresh Untill time for green Deal & End time for Hot Deal
      'end_time': FormControl<TimeOfDay>(
        validators: [
          Validators.required,
        ],
      ),
      //Start Date for Hot Deal
      'start_date': FormControl<DateTime>(
        validators: [
          Validators.required,
        ],
      ),
      'start_time': FormControl<TimeOfDay>(
        validators: [
          Validators.required,
        ],
      ),
      //Schedule Date
      'visible_date': FormControl<DateTime>(
        validators: [
          Validators.required,
        ],
      ),

      'visible_time': FormControl<TimeOfDay>(
        validators: [
          Validators.required,
        ],
      ),
    },
  );
  final RxString currency = "".obs;
  final RxString productImageUrl0 = "".obs;
  final RxString productImageUrl1 = "".obs;
  final RxString productImageUrl2 = "".obs;
  final RxString productImageUrl3 = "".obs;
  final AuthService _userService = AuthService.to;
  final RxBool isPicUploading0 = false.obs;
  final RxBool isPicUploading1 = false.obs;
  final RxBool isPicUploading2 = false.obs;
  final RxBool isPicUploading3 = false.obs;
  final RxBool GreenDealChecked = false.obs;
  final RxBool RedDealChecked = false.obs;
  final RxBool hotDealChecked = false.obs;
  static final DataService _dataService = DataService.to;
  Rx<Users?> get user => _userService.user.value.obs;
  final RxString shopId = "".obs;
  final RxBool showProductUploadForm = false.obs;
  final RxBool show_GreenDeal_ProductUploadForm = false.obs;
  final RxBool show_HotDeal_ProductUploadForm = false.obs;
  final RxBool showBulkProductUploadForm = false.obs;
  final RxBool ScheduleisChecked = false.obs;
  final RxBool PublishedisChecked = true.obs;
  final RxBool hotdealisChecked = false.obs;
  final Rx<ProductCategory> product_cat = ProductCategory.FOOD.obs;
  final RxBool showBulkCSVList = false.obs;
  final RxBool showBulkList = false.obs;
  final RxBool isEditing = false.obs;
  final Rx<ProductDealType> Dealtype = ProductDealType.GREENDEALS.obs;
  final RxBool singleProductUploadComplete = false.obs;
  List<List<dynamic>> rowsAsListOfValues = [[]].obs;
  final RxList<ProductCategory> columnlist = [
    ProductCategory.FOOD,
    ProductCategory.VEGITABLE,
    ProductCategory.FASTFOOD
  ].obs;
  List<dynamic> ListOfValues = [];
  final RxList<Product>? ListOfValues2 = <Product>[].obs;
  final RxList<Product>? products = <Product>[].obs;

  @override
  void onInit() {
    _fetchData();
    super.onInit();
  }

  void _fetchData() async {
    await getshopId();
  }

  Future<void> getshopId() async {
    await DataService.to.fetchShopId().then((value) => shopId(value));
  }

  Future<void> pickImage(RxString imageUrl, RxBool loadingbool) async {
    print('pick image');
    loadingbool(true);
    await _dataService
        .uploadImage('${user.value!.id}_${DateTime.now().toString()}')
        .then((fireBaseUrl) async {
      // print(value);
      imageUrl(fireBaseUrl);
      loadingbool(false);
      print(fireBaseUrl);
    });
  }

  // Future<void> imagepick() async {
  //   print('pick image');
  //   isPicUploading(true);
  //   await _dataService.uploadImage(_userService.user.value!.id).then((fireBaseUrl) async {
  //     // print(value);
  //     productImageUrl(fireBaseUrl);
  //     isPicUploading(false);
  //     print(fireBaseUrl);
  //   });
  // }

  Future<void> importCSV() async {
    //Pick file
    DateTime now = DateTime.now();
    FilePickerResult? csvFile = await FilePicker.platform.pickFiles(
        allowedExtensions: ['csv'],
        type: FileType.custom,
        allowMultiple: false);
    if (csvFile != null) {
      //decode bytes back to utf8
      var uuid = const Uuid();
      final bytes = utf8.decode(csvFile.files[0].bytes!);
      Uint8List? doc = csvFile.files.first.bytes;
      String filename = csvFile.files.first.name;
      String nameForApi = AuthService.to.user.value!.id +
          filename +
          uuid.v1().toString().substring(0, 10);
      DataService.to.uploadCSV(csv: nameForApi, filebytes: doc);
      //from the csv plugin

      rowsAsListOfValues = const CsvToListConverter().convert(bytes);
      var temp = const CsvToListConverter().convert(bytes);
      // Get.log(ListOfValues2!.length.toString());

      for (var item in rowsAsListOfValues) {
        // ListOfValues2?.add(Product(id: item));
        print("CSV FILE DATA");
        print(item.toString());
        DateTime createdon = DateTime.parse(item[4]);
        DateTime expireon = DateTime.parse(item[5]);
        // Product temp = Product(
        //   img_token: item[0],
        //   name: item[1],
        //   price: item[2],
        //   discount: item[3],
        //   created_on: TemporalDateTime(createdon),
        //   expires_on: TemporalDateTime(expireon),
        //   deal_type: ProductDealType.GREENDEALS,
        //   shopID: shopId.value,
        //   currency_type: item[4],
        // );
        Product temp = Product(
          img_token: item[0],
          name: item[1],
          price: item[2],
          discount: item[3],
          available_from: TemporalDateTime(createdon),
          expires_on: TemporalDateTime(expireon),
          deal_type: ProductDealType.GREENDEALS,
          shopID: shopId.value,
          currency_type: item[4],
        );

        products?.add(temp);
        // print('List values:' + item.runtimeType.toString());
      }
      // print("After ::: " + ListOfValues2!.length.toString());
      // print('List of products from csv: \n ${ListOfValues2?.value}');
      ListOfValues = rowsAsListOfValues;
      // Get.log('This is list of values: ' + ListOfValues[0].toString());
      // Get.log("Length of Columns in list: ${rowsAsListOfValues[0].length}");
      // for (var col in rowsAsListOfValues[0]) {
      //   Get.log(col);
      // }
      print("print(showBulkList.toggle());");
      print(showBulkList.toggle());

      showBulkCSVList.toggle();
    }
  }

  Future<void> uploadBulkProducts() async {
    showBulkList.toggle();
    showBulkProductUploadForm.toggle();
  }

  Future<void> createProductFromList() async {
    isEditing.toggle();
    print("Product list 238:" + products.toString());
    await Future.wait([
      for (var item in products!)
        // print("Product Name: ${item.name!}");
        // print("Product image: ${item.img_token!}");
        // print("Product offer_ends_on: ${item.expires_on!}");
        // print("Product offer_available_from: ${item.available_from!}");
        // print("Product expire: ${item.expires_on!}");
        // print("Product price: ${item.price!}");
        // print("Product discount: ${item.discount!}");
        // print("Product deal_type: ${item.deal_type!}");
        // print("Product shopID: ${shopId.value}");
        _dataService.CreateNewGreenProduct(
          offer_ends_on: item.expires_on,
          shopid: shopId.value,
          img_token: item.img_token!,
          product_name: item.name!,
          deal_type: item.deal_type!,
          price: item.price!,
          offer_price: item.discount!,
          offer_available_from: item.available_from,
          currency_type:
              item.currency_type == null ? "USD" : item.currency_type!,
        )
    ], cleanUp: (val) {
      print("CLEAN THE PRODUCT LIST ");
    });

    print("Data uploaded");
    print(showBulkList.toggle());
    showBulkCSVList.toggle();
    showBulkList.toggle();
    products?.clear();
    isEditing(false);

    print("products >>>>");
    print(products.toString());
    Get.snackbar(
      "New Product Created",
      "updated on backend",
    );
  }

  Future<void> createProductFromListForm() async {
    isEditing.toggle();

    print("Product list 276 :" + ListOfValues.toString());

    await Future.wait([
      for (var item in ListOfValues)
        // {
        _dataService.CreateNewGreenProduct(
          offer_ends_on: item.expires_on,
          shopid: shopId.value,
          img_token: item.img_token!,
          product_name: item.name!,
          deal_type: item.deal_type!,
          price: item.price!,
          offer_price: item.discount!,
          offer_available_from: item.available_from,
          currency_type: item.currency_type,
        )
      // }
    ]);

    showBulkCSVList.toggle();
    isEditing(false);
  }

  void createProduct() async {
    print("Creating new Green Deal Product");
    TemporalDateTime? date =
        TemporalDateTime(productAddForm.value["expiry_date"] as DateTime);

    double actualPrice =
        double.parse(productAddForm.value["actual_price"].toString());
    print("actual price: $actualPrice");
    print("object: ${actualPrice.runtimeType}");
    double offerPrice =
        double.parse(productAddForm.value["offer_price"].toString());
    print("actual price: $offerPrice");
    print("object: ${offerPrice.runtimeType}");
    if (currency.isEmpty) {
      currency("USD");
    }
    TemporalDateTime? date3;
    if (PublishedisChecked.isTrue) {
      DateTime d3 = DateTime.now();
      date3 = TemporalDateTime(d3);
    } else {
      DateTime d3 = productAddForm.value["visible_date"] as DateTime;

      TimeOfDay t3 = productAddForm.value["visible_time"] as TimeOfDay;
      DateTime Avdate = DateTime(d3.year, d3.month, d3.day, t3.hour, t3.minute);
      date3 = TemporalDateTime(Avdate);
    }
    isEditing.toggle();
    var x = await _dataService.CreateNewGreenProduct(
      offer_ends_on: date,
      shopid: shopId.value,
      img_token: productImageUrl0.value,
      product_name: productAddForm.value["productname"].toString(),
      deal_type: Dealtype.value,
      price: actualPrice,
      offer_price: offerPrice,
      offer_available_from: date3,
      currency_type: currency.value,
    );
    // ListOfValues.add(x);

    showProductUploadForm(false);
    showBulkProductUploadForm(false);
    GreenDealChecked(false);
    RedDealChecked(false);
    hotDealChecked(false);
    productImageUrl0('');
    productImageUrl1('');
    productImageUrl2('');
    productImageUrl3('');
    currency('');
    productAddForm.reset();
    Get.snackbar(
      "New Product Created",
      "updated on backend",
    );
  }

  String? get StrDate {
    TimeOfDay t1 = productAddForm.value["start_time"] as TimeOfDay;
    DateTime d1 = productAddForm.value["start_date"] as DateTime;
    DateTime StrDate = DateTime(d1.year, d1.month, d1.day, t1.hour, t1.minute);
    print("Start date: ${StrDate.toString()}");
    return StrDate.toString();
  }

  String? get SchDate {
    TemporalDateTime? date3;
    if (PublishedisChecked.isTrue) {
      DateTime d3 = DateTime.now();
      date3 = TemporalDateTime(d3);
    } else {
      DateTime d3 = productAddForm.value["visible_date"] as DateTime;

      TimeOfDay t3 = productAddForm.value["visible_time"] as TimeOfDay;
      DateTime Avdate = DateTime(d3.year, d3.month, d3.day, t3.hour, t3.minute);
      date3 = TemporalDateTime(Avdate);
    }
    print("Schdule date: ${date3.toString()}");
    return date3.toString();
  }

  String? get ExpDate {
    DateTime d2 = productAddForm.value["expiry_date"] as DateTime;

    TimeOfDay t2 = productAddForm.value["end_time"] as TimeOfDay;
    DateTime Expdate = DateTime(d2.year, d2.month, d2.day, t2.hour, t2.minute);
    print("End date: ${Expdate.toString()}");
    return Expdate.toString();
  }

  void createHotDealProduct() async {
    print("Creating new Hot Deal Product");
    TimeOfDay t1 = productAddForm.value["start_time"] as TimeOfDay;
    DateTime d1 = productAddForm.value["start_date"] as DateTime;
    DateTime Schdate = DateTime(d1.year, d1.month, d1.day, t1.hour, t1.minute);
    TemporalDateTime? date = TemporalDateTime(Schdate);

    DateTime d2 = productAddForm.value["expiry_date"] as DateTime;
    TimeOfDay t2 = productAddForm.value["end_time"] as TimeOfDay;
    DateTime Expdate = DateTime(d2.year, d2.month, d2.day, t2.hour, t2.minute);
    TemporalDateTime? date2 = TemporalDateTime(Expdate);

    TemporalDateTime? date3;
    if (PublishedisChecked.isTrue) {
      DateTime d3 = DateTime.now();
      date3 = TemporalDateTime(d3);
    } else {
      DateTime d3 = productAddForm.value["visible_date"] as DateTime;

      TimeOfDay t3 = productAddForm.value["visible_time"] as TimeOfDay;
      DateTime Avdate = DateTime(d3.year, d3.month, d3.day, t3.hour, t3.minute);
      date3 = TemporalDateTime(Avdate);
    }

    double actualPrice =
        double.parse(productAddForm.value["actual_price"].toString());
    print("actual price: $actualPrice");
    print("object: ${actualPrice.runtimeType}");
    double offerPrice =
        double.parse(productAddForm.value["offer_price"].toString());
    print("actual price: $offerPrice");
    print("object: ${offerPrice.runtimeType}");
    print("product going live on: ${date2.toString()}");
    isEditing.toggle();
    var x = await _dataService.CreateNewHotProduct(
      shopid: shopId.value,
      offer_ends_on: date,
      offer_starts_on: date2,
      offer_available_from: date3,
      img_token: productImageUrl0.value,
      product_name: productAddForm.value["productname"].toString(),
      deal_type: ProductDealType.HOTDEALS,
      price: actualPrice,
      offer_price: offerPrice,
      currency_type: currency.value,
    );
    // ListOfValues.add(x);
    productAddForm.reset();
    showProductUploadForm(false);
    showBulkProductUploadForm(false);
    GreenDealChecked(false);
    RedDealChecked(false);
    hotDealChecked(false);
    productImageUrl0('');
    productImageUrl1('');
    productImageUrl2('');
    productImageUrl3('');

    print("Product Create: " + x.toString());
    print("Product list:" + ListOfValues.toString());
    Get.snackbar(
      "New Product Created",
      "updated on backend",
    );
  }

  Future<void> FetchAndReset() async {
    TimeOfDay t1 = productAddForm.value["end_time"] as TimeOfDay;
    DateTime d1 = productAddForm.value["expiry_date"] as DateTime;
    DateTime Schdate = DateTime(d1.year, d1.month, d1.day, t1.hour, t1.minute);
    TemporalDateTime? date = TemporalDateTime(Schdate);

    TemporalDateTime? date3;
    if (PublishedisChecked.isTrue) {
      DateTime d3 = DateTime.now();
      date3 = TemporalDateTime(d3);
    } else {
      DateTime d3 = productAddForm.value["visible_date"] as DateTime;
      TimeOfDay t3 = productAddForm.value["visible_time"] as TimeOfDay;
      DateTime Avdate = DateTime(d3.year, d3.month, d3.day, t3.hour, t3.minute);
      date3 = TemporalDateTime(Avdate);
    }

    double offerPrice =
        double.parse(productAddForm.value["offer_price"].toString());
    Product temp = Product(
      expires_on: date,
      available_from: date3,
      img_token: productImageUrl0.value,
      name: productAddForm.value["productname"].toString(),
      deal_type: Dealtype.value,
      discount: offerPrice,
      price: double.parse(productAddForm.value["actual_price"].toString()),
      // currency_type: currency
    );

    products?.add(temp);

    productImageUrl0('');
    productImageUrl1('');
    productImageUrl2('');
    productImageUrl3('');
    currency('');
    productAddForm.reset();
  }
}
