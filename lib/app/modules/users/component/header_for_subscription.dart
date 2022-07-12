import 'package:cucumia_admin/app/widgets/components/export_button.dart';
import 'package:cucumia_admin/app/widgets/utils/padding_wrapper.dart';
import 'package:cucumia_admin/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class UsersHeader2 extends GetResponsiveView {
  final String title;
  Function()? onsubbuy = () {};
  UsersHeader2({
    Key? key,
    required this.title,
    this.onsubbuy,
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
            const Spacer(),
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // MaterialButton(
                //   onPressed: () {},
                //   height: 50,
                //   minWidth: 120,
                //   shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(8.0),
                //     side: BorderSide(
                //       color: Theme.of(screen.context).disabledColor,
                //     ),
                //   ),
                //   child: Row(
                //     children: [
                //       Icon(
                //         IconlyLight.filter,
                //         size: 14,
                //         color: Theme.of(screen.context).disabledColor,
                //       ),
                //       const SizedBox(
                //         width: 10,
                //       ),
                //       Text(
                //         'Filter',
                //         textScaleFactor: Get.textScaleFactor,
                //         style: DefaultTextStyle.of(screen.context).style.copyWith(
                //               color: Theme.of(screen.context).disabledColor,
                //               fontSize: 14,
                //             ),
                //       ),
                //     ],
                //   ),
                // ),

                const SizedBox(
                  width: 10,
                ),
                // ExportButton(),
                const SizedBox(
                  width: 10,
                ),
                MaterialButton(
                  onPressed: onsubbuy,
                  height: 50,
                  minWidth: 120,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  color: Theme.of(context).primaryColor,
                  child: Text(
                    'Buy Subscription'.tr,
                    textScaleFactor: Get.textScaleFactor,
                    style: DefaultTextStyle.of(screen.context).style.copyWith(
                          color: AppColors.white,
                          fontSize: 14,
                        ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
