import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:cucumia_admin/app/data/demo_data.dart';
import 'package:cucumia_admin/models/AdvertisementBanner.dart';
import 'package:cucumia_admin/models/Users.dart';
import 'package:cucumia_admin/services/auth_service.dart';
import 'package:cucumia_admin/services/data_service.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get/get.dart';

class BannerAdsController extends GetxController {
  //TODO: Implement BannerAdsController
  final RxList<AdvertisementBanner> BannerData = DemoData.DemoBanner;
  final DataService _dataService = DataService.to;
  final AuthService userService = AuthService.to;
  final RxBool isloadinglist = false.obs;
  final RxBool isCreatingBanner = false.obs;
  final RxString BannerImageUrl = "".obs;
  final RxBool isPicUploading = false.obs;
  final RxBool isEditing = false.obs;
  final count = 0.obs;
  final AuthService _userService = AuthService.to;
  Rx<Users?> get user => _userService.user.value.obs;
  final FormGroup bannerForm = FormGroup(
    {
      'banner_name': FormControl<String>(
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
        validators: [Validators.required, Validators.compare("end_date", "start_date", CompareOption.greaterOrEqual)],
      ),
      'banner_link': FormControl<String>(
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

  void createBanner() async {
    print("Creating new Magazine");
    TemporalDateTime? date = TemporalDateTime(bannerForm.value["expiry_date"] as DateTime);
    isEditing.toggle();
    var x = await _dataService.CreateNewBanner(
      id: userService.user.value!.id,
      img_token: BannerImageUrl.value,
      offer_ends_on: date,
      title: bannerForm.value["banner_name"].toString(),
      Magazineurl: bannerForm.value["banner_link"].toString(),
    );
    isCreatingBanner(false);
    _fetchAllBanner();
    print("Creating Banner done status: " + x.toString());
    Get.snackbar(
      "New Magazine Created",
      "updated on backend",
    );
    BannerImageUrl('');
    isEditing(false);
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

  @override
  void onInit() {
    _fetchData();
    super.onInit();
  }

  void _fetchData() async {
    await _fetchAllBanner();
  }

  Future<void> _fetchAllBanner() async {
    BannerData.clear();
    // shopdetail
    isloadinglist(true);
    await Future.delayed(1000.milliseconds, () async {
      await _dataService.FetchBannerData(id: userService.user.value!.id).then((List<AdvertisementBanner> _response) {
        BannerData.addAll(_response);
      });
      print('$BannerData ----------- >>>>>>');
      isloadinglist(false);
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void increment() => count.value++;

  Future<void> onOpen(String link) async {
    if (await canLaunch(link)) {
      await launch(link);
    } else {
      throw 'Could not launch $link';
    }
  }
}
