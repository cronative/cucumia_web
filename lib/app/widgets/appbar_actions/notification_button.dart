import 'package:badges/badges.dart';
import 'package:cucumia_admin/app/modules/deletion_status/controllers/deletion_status_controller.dart';
import 'package:cucumia_admin/models/UserType.dart';
import 'package:cucumia_admin/models/Users.dart';
import 'package:cucumia_admin/services/auth_service.dart';
import 'package:cucumia_admin/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';

class NotificationButton extends GetResponsiveView {
  NotificationButton({Key? key}) : super(key: key);
  DeletionStatusController controller = Get.put(DeletionStatusController());
  @override
  Widget build(BuildContext context) {
    screen.context = context;

    return MaterialButton(
      onPressed: () {
        if (screen.isPhone) {
          AuthService.to.loggedUser != UserType.SHOP_ADMIN ? controller.isVisible.toggle() : null;
          Navigator.pop(context);
        } else {
          AuthService.to.loggedUser != UserType.SHOP_ADMIN ? controller.isVisible.toggle() : null;
        }
      },
      color: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      disabledColor: Colors.transparent,
      highlightColor: Colors.transparent,
      elevation: 0,
      focusElevation: 0,
      hoverElevation: 0,
      disabledElevation: 0,
      highlightElevation: 0,
      child: Row(
        children: [
          Badge(
            badgeColor: Theme.of(context).primaryColor,
            badgeContent: Text(
              '0',
              textScaleFactor: Get.textScaleFactor,
              style: DefaultTextStyle.of(context).style.copyWith(
                    fontSize: 12,
                    fontFamily: GoogleFonts.montserrat().fontFamily,
                    fontWeight: FontWeight.w400,
                    color: AppColors.white,
                  ),
            ),
            child: const Icon(
              Icons.notifications_outlined,
              size: 26,
            ),
          ),
          if (screen.isPhone)
            Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                Text(
                  'Notifications',
                  textScaleFactor: Get.textScaleFactor,
                  style: DefaultTextStyle.of(context).style.copyWith(
                        fontFamily: GoogleFonts.montserrat().fontFamily,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
