import 'package:cucumia_admin/app/widgets/components/export_button.dart';
import 'package:cucumia_admin/app/widgets/utils/padding_wrapper.dart';
import 'package:cucumia_admin/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class InviteHeader extends GetResponsiveView {
  final String title;
  Function()? onBackPressed = () {};
  InviteHeader({
    Key? key,
    required this.title,
    this.onBackPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    screen.context = context;
    return PaddingWrapper(
      isSliverItem: true,
      horizontalPadding: screen.isDesktop ? 50 : 20,
      topPadding: 20,
      bottomPadding: 10,
      child: SliverToBoxAdapter(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
                onPressed: onBackPressed, icon: const Icon(Icons.arrow_back_ios)),
            Text(
              title,
              style: DefaultTextStyle.of(screen.context).style.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    letterSpacing: 0.4,
                    color: Theme.of(context).primaryColor,
                  ),
              textScaleFactor: Get.textScaleFactor,
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
