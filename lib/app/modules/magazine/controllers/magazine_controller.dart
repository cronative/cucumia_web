import 'dart:typed_data';

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:cucumia_admin/app/data/demo_data.dart';
import 'package:cucumia_admin/models/Magazines.dart';
import 'package:cucumia_admin/models/Users.dart';
import 'package:cucumia_admin/services/auth_service.dart';
import 'package:cucumia_admin/services/data_service.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';
import 'package:get/get.dart';

// class Magazine {
//   String? magazineName;
//   String? companyName;
//   String? subscriptionFee;
//   String? startDate;
//   String? endDate;

//   Magazine({
//     this.magazineName,
//     this.companyName,
//     this.subscriptionFee,
//     this.startDate,
//     this.endDate,
//   });
// }

class MagazineController extends GetxController
    with GetSingleTickerProviderStateMixin {
  // final FormGroup offerMagAddForm = FormGroup(
  //   {
  //     'magazine_name': FormControl<String>(
  //       validators: [
  //         Validators.required,
  //       ],
  //     ),
  //     'expiry_date': FormControl<DateTime>(
  //       validators: [
  //         Validators.required,
  //       ],
  //     ),
  //   },
  // );
  final FormGroup onlineMagAddForm = FormGroup(
    {
      'magazine_name': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'expiry_date': FormControl<DateTime>(
        validators: [
          Validators.required,
        ],
      ),
      'start_date': FormControl<DateTime>(
        validators: [
          Validators.required,
        ],
      ),
      'end_date': FormControl<DateTime>(
        validators: [
          Validators.required,
          Validators.compare(
              "end_date", "start_date", CompareOption.greaterOrEqual)
        ],
      ),
      'magazine_link': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'magazine_title': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'noOfSubscriptions': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
    },
  );
  final RxBool showPublishedGrid = false.obs;
  final RxBool showScheduledGrid = false.obs;
  final RxBool showUploadButtons = false.obs;
  final RxBool showOfferMagazineUploadForm = false.obs;
  final RxBool showOnlineMagazineUploadForm = false.obs;
  final RxBool showBuyMagazineSubcription = false.obs;
  final RxBool isEditing = false.obs;
  final RxList<Magazines> allPublishedMagazine = RxList<Magazines>();
  final RxList<Magazines> allscheduledMagazine = RxList<Magazines>();
  // final RxList<Magazines> allActiveMagazines = RxList<Magazines>();
  late TabController tabController;
  static final DataService _dataService = DataService.to;
  final AuthService _userService = AuthService.to;
  Rx<Users?> get user => _userService.user.value.obs;
  final RxString userImageUrl0 = "".obs;
  final RxString userImageUrl1 = "".obs;
  final RxString userImageUrl2 = "".obs;
  final RxString userImageUrl3 = "".obs;
  final RxBool isPicUploading0 = false.obs;
  final RxBool isPicUploading1 = false.obs;
  final RxBool isPicUploading2 = false.obs;
  final RxBool isPicUploading3 = false.obs;

  final RxInt currentTabIndex = 0.obs;
  final RxBool isLoading = false.obs;
  final RxBool isLoadingForScheduled = false.obs;
  final RxBool buyYearlyMagazineSubcription = false.obs;

  final count = 0.obs;
  final RxList<Plan> allPlans = DemoData.demoPlans.obs;

  final RxList<Magazines> allActiveMagazines = [
    Magazines(
      usersID: "Fotex",
      title: "Fotex Week 32",
      lon: 2500,
      website_url: "Feb-14-22",
      // offer_ends_on: TemporalDateTime(2022 - 03 - 30 as DateTime),
    ),
    Magazines(
      usersID: "Fotex",
      title: "Fotex Week 32",
      lon: 2500,
      website_url: "Feb-14-22",
      // offer_ends_on: TemporalDateTime(2022 - 03 - 30 as DateTime),
    ),
    Magazines(
      usersID: "Fotex",
      title: "Fotex Week 32",
      lon: 2500,
      website_url: "Feb-14-22",
      // offer_ends_on: TemporalDateTime(2022 - 03 - 30 as DateTime),
    ),
  ].obs;

  void fetchData() {
    // if (_dataService.client != null) {
    // _fetchAllMagazine();
    _fetchAllPublishedMagazine();
    fetchAllScheduledMagazine();

    // }
  }

  // Future<void> _fetchAllMagazine() async {
  //   print("\n");
  //   print("Fetching magazines ");
  //   allPublishedMagazine.clear();
  //   isLoading(true);
  //   await Future.delayed(1000.milliseconds, () async {
  //     await _dataService.fetchAllMagazine().then((List<Magazines> _magazineresponse) {
  //       allPublishedMagazine.addAll(_magazineresponse);
  //     });

  //     isLoading(false);
  //   });
  // }

  Future<void> _fetchAllPublishedMagazine() async {
    print("\n");
    print("Fetching magazines ");
    allPublishedMagazine.clear();
    isLoading(true);
    await Future.delayed(1000.milliseconds, () async {
      await _dataService
          .fetchAllPublishedMagazines()
          .then((List<Magazines> _magazineresponse) {
        allPublishedMagazine.addAll(_magazineresponse);
      });

      isLoading(false);
    });

    print("published mag: ${allPublishedMagazine}");
  }

  Future<void> fetchAllScheduledMagazine() async {
    print("\n");
    print("Fetching magazines ");
    allscheduledMagazine.clear();
    isLoadingForScheduled(true);
    await Future.delayed(1000.milliseconds, () async {
      await _dataService
          .fetchAllScheduledMagazines()
          .then((List<Magazines> _magazineresponse) {
        allscheduledMagazine.addAll(_magazineresponse);
      });

      isLoadingForScheduled(false);
    });
  }

  void changeCurrentTab(int index) {
    if (index != currentTabIndex.value) {
      currentTabIndex(tabController.index);
    }
  }

  Future<void> pickImage(RxString imageUrl, RxBool loadingbool) async {
    print('pick image');
    loadingbool(true);
    String temp = DateTime.now().toString();
    await _dataService
        .uploadImage1('${temp}_${DateTime.now().toString()}')
        .then((imageuploadedurl) async {
      // print(value);
      imageUrl(imageuploadedurl);
      loadingbool(false);
      print(imageuploadedurl);
    });
  }

  Future<void> createMagazine() async {
    print("Creating new Magazine");
    TemporalDateTime? date =
        TemporalDateTime(onlineMagAddForm.value["expiry_date"] as DateTime);
    TemporalDateTime? date2 =
        TemporalDateTime(onlineMagAddForm.value["start_date"] as DateTime);

    isEditing.toggle();
    var x = await _dataService.CreateNewOnlineMagazine(
      offer_ends_on: date,
      offer_starts_on: date2,
      img_token: userImageUrl3.value,
      thumbnail: userImageUrl3.value,
      title: onlineMagAddForm.value["magazine_title"].toString(),
      Magazineurl: onlineMagAddForm.value["magazine_link"].toString(),
    );
    showOfferMagazineUploadForm(false);
    showOnlineMagazineUploadForm(false);
    print("Change done status: " + x.toString());
    Get.snackbar(
      "New Magazine Created",
      "updated on backend",
    );
    fetchData();
    userImageUrl0('');
    userImageUrl1('');
    userImageUrl2('');
    userImageUrl3('');
    onlineMagAddForm.reset();
  }

  void createOfferMagazine() async {
    print("Creating new Magazine");
    TemporalDateTime? date =
        TemporalDateTime(onlineMagAddForm.value["expiry_date"] as DateTime);
    TemporalDateTime? date2 =
        TemporalDateTime(onlineMagAddForm.value["start_date"] as DateTime);
    isEditing.toggle();
    Get.log(
        onlineMagAddForm.value["magazine_title"].toString() + ' ^^^^^^^^^^^');
    var x = await _dataService.CreateNewOfferMagazine(
      offer_ends_on: date,
      offer_starts_on: date2,

      img_token: [
        userImageUrl0.value,
        userImageUrl1.value,
        userImageUrl2.value
      ],
      thumbnail: userImageUrl3.value,
      title: onlineMagAddForm.value["magazine_title"].toString(),
      // Magazineurl:
      //     'https://firebasestorage.googleapis.com/v0/b/cucumia-369c1.appspot.com/o/images%2FProfileImages%2Ff6031812-9a4e-40b5-9ae5-01dc2ad8db43.jpg?alt=media&token=d7982f11-c449-4508-80f3-257b3c2d1c82',
    );
    showOfferMagazineUploadForm(false);
    showOnlineMagazineUploadForm(false);
    // print("Change done status: " + x.toString());
    Get.snackbar(
      "New Magazine Created",
      "updated on backend",
    );
    fetchData();
    userImageUrl0('');
    userImageUrl1('');
    userImageUrl2('');
    userImageUrl3('');
    onlineMagAddForm.reset();
  }

  Future<void> imagepick() async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(allowedExtensions: ['jpg']);

    if (result != null) {
      Uint8List? fileBytes = result.files.first.bytes;
      String fileName = result.files.first.name;
      print(fileName);
      // Upload file

    }
  }

  @override
  void onInit() {
    isLoading(true);
    isLoadingForScheduled(true);
    fetchData();
    tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: currentTabIndex.value,
    );

    super.onInit();
    // allPublishedMagazine.value(MagazineDummyData.demomagazines);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
