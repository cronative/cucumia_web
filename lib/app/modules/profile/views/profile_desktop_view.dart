import 'package:cucumia_admin/app/modules/profile/views/widgets/profile_info_card.dart';
import 'package:cucumia_admin/app/modules/profile/views/widgets/profile_password_widget.dart';
import 'package:cucumia_admin/app/modules/profile/views/widgets/profle_form_widget.dart';
import 'package:cucumia_admin/app/widgets/scroll_wrapper.dart';
import 'package:cucumia_admin/app/widgets/utils/padding_wrapper.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../controllers/profile_controller.dart';

class ProfileDesktopView extends GetView<ProfileController> {
  const ProfileDesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ProfileController());
    return ScrollWrapper(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      slivers: [
        _buildCards(),
        PaddingWrapper(
            leftPadding: Get.width * 0.01,
            rightPadding: Get.width * 0.01,
            isSliverItem: true,
            child: SliverToBoxAdapter(
                child: Card(
                    child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ProfilePasswordForm()))))
      ],
    );
  }

  Widget _buildCards() {
    return PaddingWrapper(
      leftPadding: Get.width * 0.01,
      rightPadding: Get.width * 0.01,
      isSliverItem: true,
      child: SliverToBoxAdapter(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(width: Get.width * 0.4, child: ProfileForm()),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                width: Get.width * 0.3,
                child: ProfileInfo(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
