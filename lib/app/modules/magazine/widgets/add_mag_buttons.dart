import 'package:cucumia_admin/app/modules/magazine/controllers/magazine_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';

import '../../../widgets/components/common_card.dart';
import '../../../widgets/padding_wrapper.dart';

class AddMagazineButtonView extends GetResponsiveView<MagazineController> {
  @override
  Widget build(BuildContext context) {
    screen.context = context;
    return PaddingWrapper(
      isSliverItem: true,
      topPadding: screen.isDesktop ? 50 : 20,
      horizontalPadding: screen.isDesktop ? 60 : 20,
      child: SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton.icon(
                style: TextButton.styleFrom(primary: Theme.of(context).primaryColor),
                onPressed: () {
                  controller.showUploadButtons(false);
                },
                icon: const Icon(IconlyLight.arrowLeft2),
                label: const Text("Back")),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: _buildButtons(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButtons() {
    return FlutterDashboardListView.grid(
      isSliverItem: false,
      childCount: 2,
      mainAxisSpacing: screen.isPhone ? 20 : 50,
      crossAxisSpacing: screen.isPhone ? 20 : 50,
      gridDelegate: !screen.isPhone
          ? FlutterDashboardGridDelegates.columns_2(
              width: screen.width,
              length: 2,
            )
          : FlutterDashboardGridDelegates.columns_1(
              width: screen.width,
              length: 2,
            ),
      buildItem: (BuildContext context, int index) {
        return _cardItems()[index];
      },
      listType: FlutterDashboardListType.Grid,
    );
  }

  Widget _buildCard({required String text, required VoidCallback onPressed}) {
    return CommonCard(
      onTap: onPressed,
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            IconlyLight.plus,
            color: DefaultTextStyle.of(screen.context).style.color,
            size: 50,
          ),
          const Divider(
            color: Colors.transparent,
          ),
          Text(
            text,
            textScaleFactor: Get.textScaleFactor,
            style: DefaultTextStyle.of(screen.context).style.copyWith(
                  fontSize: Theme.of(screen.context).textTheme.headline6?.fontSize,
                ),
          ),
        ],
      ),
    );
  }

  List<Widget> _cardItems() {
    return [
      _buildCard(
        text: 'Add Offer Magazine',
        onPressed: () {
          controller.showOfferMagazineUploadForm(true);
        },
      ),
      _buildCard(
        text: 'Add Online Magazine',
        onPressed: () {
          controller.showOnlineMagazineUploadForm(true);
        },
      ),
    ];
  }
}
