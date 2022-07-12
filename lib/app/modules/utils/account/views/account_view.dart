import 'package:cucumia_admin/app/modules/utils/account/views/account_desktop_view.dart';
import 'package:cucumia_admin/app/modules/utils/account/views/account_tablet_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/account_controller.dart';
import 'account_mobile_view.dart';

class AccountView extends GetResponsiveView<AccountController> {
  @override
  Widget? phone() => AccountMobileView();
  @override
  Widget? tablet() => const AccountTabletView();
  @override
  Widget? desktop() => const AccountDesktopView();
}
