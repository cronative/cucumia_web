import 'package:cucumia_admin/app/modules/registration/views/registration_desktop_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/registration_controller.dart';

class RegistrationView extends GetResponsiveView<RegistrationController> {
  // @override
  // Widget? phone() => RegistrationMobileView();
  // @override
  // Widget? tablet() => RegistrationMobileView();
  @override
  Widget? desktop() => RegistrationDesktopView();
}
