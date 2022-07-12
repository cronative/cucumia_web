import 'package:cucumia_admin/app/modules/deletion_status/controllers/deletion_status_controller.dart';
import 'package:cucumia_admin/app/modules/deletion_status/views/deletion_status_view.dart';
import 'package:cucumia_admin/app/modules/utils/account/views/widgets/account_form_widget.dart';
import 'package:cucumia_admin/app/modules/utils/account/views/widgets/account_info_card_tablet.dart';
import 'package:cucumia_admin/app/modules/utils/account/views/widgets/account_password_widget.dart';
import 'package:cucumia_admin/app/widgets/scroll_wrapper.dart';
import 'package:cucumia_admin/app/widgets/utils/padding_wrapper.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../controllers/account_controller.dart';

class AccountTabletView extends GetView<AccountController> {
  const AccountTabletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DeletionStatusController deletionStatusController = Get.put(DeletionStatusController());

    Get.put(AccountController());
    return Obx(() => ScrollWrapper(
          appBar: AppBar(
            title: const Text('My Profile'),
          ),
          slivers: [
            SliverVisibility(
              visible: deletionStatusController.isVisible.value,
              sliver: SliverToBoxAdapter(
                child: DeletionStatusView(),
              ),
            ),
            SliverVisibility(
              visible: !deletionStatusController.isVisible.value,
              sliver: _buildCards(),
            ),
            SliverVisibility(
              visible: !deletionStatusController.isVisible.value,
              sliver: passwordwid(),
            ),
          ],
        ));
  }

  Widget _buildCards() {
    return PaddingWrapper(
      leftPadding: Get.width * 0.01,
      rightPadding: Get.width * 0.01,
      isSliverItem: true,
      child: SliverToBoxAdapter(
        child: Column(
          children: [
            Align(
                alignment: Alignment.center,
                child: SizedBox(
                    width: Get.width * 0.85,
                    child: AccountInfoTablet(
                      radius: 100,
                    ))),
            Align(
              alignment: Alignment.center,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(width: Get.width * 0.8, child: const AccountForm()),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget passwordwid() {
    return PaddingWrapper(
      leftPadding: Get.width * 0.01,
      rightPadding: Get.width * 0.01,
      isSliverItem: true,
      child: SliverToBoxAdapter(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: AccountPasswordForm(),
          ),
        ),
      ),
    );
  }
}
