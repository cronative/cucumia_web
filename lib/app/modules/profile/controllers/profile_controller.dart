import 'package:cucumia_admin/app/modules/profile/forms/profile_form.dart';
import 'package:cucumia_admin/models/Users.dart';
import 'package:cucumia_admin/services/auth_service.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ProfileController extends GetxController {
  //TODO: Implement ProfileController

  final FormGroup editForm = ProfileForms.profileEditForm;
  final FormGroup passwordForm = ProfileForms.profilePasswordForm;
  final AuthService _userService = AuthService.to;
  Users? get user => _userService.user.value;
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

  void pickImage() {
    print('pick image');
  }

  void updateUserProfile() {
    isEditing.toggle();
    print('pick image');
  }

  @override
  void onInit() {
    setInitialFormValue();
    super.onInit();
  }

  void setInitialFormValue() {
    if (user != null) {
      editForm
          .control('first_name')
          .patchValue((user?.fullname ?? '').split(' ').first);
      editForm
          .control('last_name')
          .patchValue((user!.fullname ?? '').split(' ').last);
      editForm
          .control('mobile_no')
          .patchValue((user?.phn_number ?? '').split('-').last);
      editForm.control('address').patchValue((user?.gmail_id ?? ''));
      editForm.control('city').patchValue((user?.email ?? ''));
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
