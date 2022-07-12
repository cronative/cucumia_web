import 'package:cucumia_admin/app/modules/deletion_status/controllers/deletion_status_controller.dart';
import 'package:cucumia_admin/app/modules/deletion_status/views/deletion_status_view.dart';
import 'package:cucumia_admin/app/modules/utils/account/views/widgets/account_form_widget.dart';
import 'package:cucumia_admin/app/modules/utils/account/views/widgets/account_info_card.dart';
import 'package:cucumia_admin/app/modules/utils/account/views/widgets/account_password_widget.dart';
import 'package:cucumia_admin/app/widgets/padding_wrapper.dart';
import 'package:cucumia_admin/app/widgets/scroll_wrapper.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/account_controller.dart';

class AccountMobileView extends GetView<AccountController> {
  @override
  Widget build(BuildContext context) {
    DeletionStatusController deletionStatusController =
        Get.put(DeletionStatusController());
    Get.put(AccountController);
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
              sliver: _buildInfoCard(),
            ),
            SliverVisibility(
              visible: !deletionStatusController.isVisible.value,
              sliver: _buildFormCard(),
            ),
            SliverVisibility(
              visible: !deletionStatusController.isVisible.value,
              sliver: PaddingWrapper(
                  leftPadding: Get.width * 0.01,
                  rightPadding: Get.width * 0.01,
                  isSliverItem: true,
                  child: SliverToBoxAdapter(
                      child: Card(
                          child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: AccountPasswordForm())))),
            ),
          ],
        ));
  }

  Widget _buildFormCard() {
    return PaddingWrapper(
      leftPadding: Get.width * 0.01,
      rightPadding: Get.width * 0.01,
      isSliverItem: true,
      child: SliverToBoxAdapter(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(width: Get.width * 0.5, child: const AccountForm()),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoCard() {
    return PaddingWrapper(
      leftPadding: Get.width * 0.01,
      rightPadding: Get.width * 0.01,
      isSliverItem: true,
      child: SliverToBoxAdapter(
        child: SizedBox(
            width: Get.width * 0.8,
            child: AccountInfo(
              radius: Get.width * 0.1,
            )),
      ),
    );
  }
}
