import 'package:cucumia_admin/app/data/demo_data.dart';
import 'package:get/get.dart';

class MerchantsController extends GetxController {
  final RxList<DemoUser> userData = RxList<DemoUser>();
  final RxList<DemoMerchants> merchantsData = DemoData.DemoMerchantsdata;
  final RxList<InviteMechantData> allInvitedMerchants =
      DemoData.DemoInvitedMerchants;
  final RxList<InviteMechantData> addedMerchants =
      DemoData.DemoalreadyaddedMerchants;
  final RxList<InviteMechantData> allUninvitedMerchants =
      DemoData.DemoNotaddedMerchants;
  final RxBool isInviting = false.obs;
  final RxBool shopGridView = false.obs;
  void removeMerchant(InviteMechantData merchant) {
    addedMerchants.remove(merchant);
    allUninvitedMerchants.add(merchant);
  }

  void addMerchant(InviteMechantData merchant) {
    addedMerchants.add(merchant);
    allUninvitedMerchants.remove(merchant);
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
