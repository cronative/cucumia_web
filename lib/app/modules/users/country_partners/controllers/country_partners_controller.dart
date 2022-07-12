import 'package:cucumia_admin/app/data/demo_data.dart';
import 'package:get/get.dart';

class CountryPartnersController extends GetxController {
  final RxList<DemoUser> userData = RxList<DemoUser>();
  final RxList<InviteCPData> allInvitedCountryPartners =
      DemoData.DemoInvitedCPs;
  final RxList<InviteCPData> addedCountryPartners =
      DemoData.DemoalreadyaddedCPs;
  final RxList<InviteCPData> allUninvitedCountryPartners =
      DemoData.DemoNotaddedCPs;
  final RxBool isInviting = false.obs;
  void removeCP(InviteCPData cp) {
    addedCountryPartners.remove(cp);
    allUninvitedCountryPartners.add(cp);
  }

  void addCP(InviteCPData cp) {
    addedCountryPartners.add(cp);
    allUninvitedCountryPartners.remove(cp);
  }

  @override
  void onInit() {
    userData.addAll(DemoData.userData);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
