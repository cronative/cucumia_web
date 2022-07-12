import 'package:cucumia_admin/app/data/demo_data.dart';
import 'package:get/get.dart';

class AffiliateController extends GetxController {
  final RxList<DemoAffiliate> AffiliateData = RxList<DemoAffiliate>();
  final RxList<InviteAffiliateData> allInvitedAffiliates =
      DemoData.DemoInvitedAffiliates;
  final RxList<InviteAffiliateData> addedAffiliates =
      DemoData.DemoalreadyaddedAffiliates;
  final RxList<InviteAffiliateData> allUninvitedAffiliates =
      DemoData.DemoNotaddedAffiliates;
  final RxBool isInviting = false.obs;
  void removeAffiliate(InviteAffiliateData cp) {
    addedAffiliates.remove(cp);
    allUninvitedAffiliates.add(cp);
  }

  void addAffiliate(InviteAffiliateData cp) {
    addedAffiliates.add(cp);
    allUninvitedAffiliates.remove(cp);
  }

  @override
  void onInit() {
    AffiliateData.addAll(DemoData.DemoAffiliatedata);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
