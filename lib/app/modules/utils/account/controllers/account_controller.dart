import 'package:cucumia_admin/models/Users.dart';
import 'package:cucumia_admin/services/auth_service.dart';
import 'package:cucumia_admin/services/data_service.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';
import 'package:get/get.dart';

import '../../../../data/demo_data.dart';
import '../../../profile/forms/profile_form.dart';

class AccountController extends GetxController {
  //TODO: Implement AccountController
  final FormGroup editForm = ProfileForms.profileEditForm;
  final FormGroup passwordForm = ProfileForms.profilePasswordForm;
  final AuthService userService = AuthService.to;
  // Rx<Users?> get user => _userService.user.value.obs;
  // Rx<Users?> user = userService.user.value.obs;
  static final DataService _dataService = DataService.to;
  final RxString userImageUrl = "".obs;
  final RxBool isPicUploading = false.obs;
  // final user = UserProfile(
  //   name: "Jessica Jones",
  //   city: "Bucharest",
  //   country: "Romania",
  //   role: "Solution Manager — Creative Tim Officer",
  //   education: "University of Computer Science",
  //   countryPartners: 29,
  //   affiliates: 89,
  //   merchants: 10,
  // ).obs;

  final isEditing = false.obs;

  Future<void> pickImage() async {
    print('pick image');
    isPicUploading(true);
    await _dataService
        .uploadImage(userService.user.value!.id)
        .then((fireBaseUrl) async {
      // print(value);
      userImageUrl(fireBaseUrl);
      isPicUploading(false);
      print(fireBaseUrl);
    });
  }

  void updateUserProfile() async {
    isEditing.toggle();
    var x = await _dataService.updateUserData(
      id: userService.user.value!.id,
      fullname: editForm.value["first_name"].toString() +
          " " +
          editForm.value["last_name"].toString(),
      img_token: userImageUrl.value,
      phone_number: editForm.value["mobile_no"].toString().isNotEmpty
          ? editForm.value["mobile_no"].toString()
          : userService.user.value!.phn_number,
    );
    print("Change done status: " + x.toString());
    // Users? userNew = await _dataService.refreshUserDetails(
    //   id: user.value!.id,
    // );
    await _dataService.FetchUpdatedData(
      id: userService.user.value!.id,
    ).then((userNew) async {
      print("updated New User Details: $userNew}");
      userService.user(userNew);
      print("Updated User Details: $userService.user");
      userImageUrl(userNew?.img_token);
      print("\n");
    });

    print("\n Now image url is ${userImageUrl.value}");
    Get.snackbar(
      "Profile Updated",
      "new details fetched",
    );
  }

  @override
  void onInit() {
    setInitialFormValue();
    super.onInit();
  }

  void setInitialFormValue() {
    if (userService.user != null) {
      userImageUrl(userService.user.value!.img_token ?? "");
      editForm.control('first_name').patchValue(
          (userService.user.value!.fullname ?? '').split(' ').first);
      editForm
          .control('last_name')
          .patchValue((userService.user.value!.fullname ?? '').split(' ').last);
      editForm.control('mobile_no').patchValue(
          (userService.user.value!.phn_number ?? '').split('-').last);
      editForm
          .control('address')
          .patchValue((userService.user.value!.gmail_id ?? ''));
      editForm
          .control('city')
          .patchValue((userService.user.value!.email ?? ''));
      // editForm.control('country').patchValue((user.value.country ?? ''));
      // editForm.control('postal_code').patchValue((user.value.postalCode ?? ''));
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  connect() {
    print("Connect");
  }
}
