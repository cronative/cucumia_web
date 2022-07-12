import 'package:cucumia_admin/app/modules/profile/views/profile_desktop_view.dart';
import 'package:cucumia_admin/app/modules/profile/views/profile_mobile_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetResponsiveView<ProfileController> {
  @override
  Widget? phone() => ProfileMobileView();
  @override
  Widget? tablet() => ProfileMobileView();
  @override
  Widget? desktop() => ProfileDesktopView();
}
