import 'package:cucumia_admin/app/modules/banner_ads/views/create_ads.dart';
import 'package:cucumia_admin/app/modules/deletion_status/controllers/deletion_status_controller.dart';
import 'package:cucumia_admin/app/modules/deletion_status/views/deletion_status_view.dart';
import 'package:cucumia_admin/app/modules/users/component/banner_ads_table_datasrc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';

import 'package:get/get.dart';

import '../../users/component/header.dart';
import '../controllers/banner_ads_controller.dart';

DeletionStatusController deletionStatusController =
    Get.put(DeletionStatusController());

class BannerAdsView extends GetResponsiveView<BannerAdsController> {
  BannerAdsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    screen.context = context;
    return Obx(
      () => FlutterDashboardListView(
        slivers: [
          SliverVisibility(
            visible: deletionStatusController.isVisible.value,
            sliver: SliverToBoxAdapter(
              child: DeletionStatusView(),
            ),
          ),
          SliverVisibility(
            visible: !deletionStatusController.isVisible.value,
            sliver: UsersHeaderWithoutExport(
              title2: 'Banner ads',
              onCreateNew: () {
                controller.isCreatingBanner.toggle();
                print("Create");
              },
            ),
          ),
          SliverVisibility(
              visible: controller.isCreatingBanner.value &&
                  !deletionStatusController.isVisible.value,
              sliver: CreateAdView()),
          SliverVisibility(
            visible: !controller.isCreatingBanner.value &&
                !deletionStatusController.isVisible.value,
            sliver: SliverToBoxAdapter(
              // hasScrollBody: false,
              child: controller.BannerData.isNotEmpty
                  ? Theme(
                      data: Theme.of(context).copyWith(
                        cardColor: Colors.transparent,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 2, top: 12),
                        child: controller.BannerData.isNotEmpty
                            ? PaginatedDataTable(
                                showCheckboxColumn: false,
                                rowsPerPage: controller.BannerData.isEmpty
                                    ? 1
                                    : controller.BannerData.length < 10
                                        ? controller.BannerData.length
                                        : 10,
                                columns: const [
                                  DataColumn(label: Text('Ad ')),
                                  DataColumn(label: Text('Area')),
                                  DataColumn(label: Text('Start Date')),
                                  DataColumn(label: Text('End Date')),
                                  DataColumn(label: Text('Amount')),
                                  DataColumn(label: Text('Deactiv')),
                                  DataColumn(label: Text('Status')),
                                  DataColumn(label: Text('ACTIONS')),
                                ],
                                columnSpacing: 10,
                                dataRowHeight: kMinInteractiveDimension + 20,
                                source: DataSourceBannerAds(
                                    context, controller.BannerData),
                              )
                            : const Center(child: CircularProgressIndicator()),
                      ),
                    )
                  : const Center(child: CircularProgressIndicator()),
            ),
          ),
        ],
      ),
    );
  }
}
