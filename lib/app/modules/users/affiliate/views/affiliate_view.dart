import 'package:cucumia_admin/app/modules/deletion_status/controllers/deletion_status_controller.dart';
import 'package:cucumia_admin/app/modules/deletion_status/views/deletion_status_view.dart';
import 'package:cucumia_admin/app/modules/users/component/header.dart';
import 'package:cucumia_admin/app/modules/users/component/header_invite.dart';
import 'package:cucumia_admin/app/modules/users/component/table_data_sourcefor_affiliates.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';
import '../controllers/affiliate_controller.dart';
import 'invite_affiliate_view.dart';

DeletionStatusController deletionStatusController = Get.put(DeletionStatusController());

class AffiliateView extends GetResponsiveView<AffiliateController> {
  AffiliateView({Key? key}) : super(key: key);

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
            visible: controller.isInviting.isFalse && !deletionStatusController.isVisible.value,
            sliver: UsersHeader(
                title: 'Affiliate',
                onCreateNew: () {
                  controller.isInviting.toggle();
                  print("Create");
                }),
          ),
          SliverVisibility(
            visible: controller.isInviting.isFalse && !deletionStatusController.isVisible.value,
            sliver: SliverToBoxAdapter(
              // hasScrollBody: false,
              child: controller.AffiliateData.isNotEmpty
                  ? Theme(
                      data: Theme.of(context).copyWith(
                        cardColor: Colors.transparent,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 2, top: 12),
                        child: PaginatedDataTable(
                          showCheckboxColumn: false,
                          rowsPerPage: controller.AffiliateData.isEmpty
                              ? 1
                              : controller.AffiliateData.length < 10
                                  ? controller.AffiliateData.length
                                  : 10,
                          columns: const [
                            DataColumn(label: Text('Name')),
                            DataColumn(label: Text('Area')),
                            DataColumn(label: Text('Invited By')),
                            DataColumn(label: Text('Revenue(Month)')),
                            DataColumn(label: Text('Created Date')),
                            DataColumn(label: Text('ACTIONS')),
                          ],
                          columnSpacing: 20,
                          source: DataSourceAffiliates(
                            context,
                            controller.AffiliateData,
                          ),
                        ),
                      ),
                    )
                  : const Center(child: CircularProgressIndicator()),
            ),
          ),
          SliverVisibility(
            visible: controller.isInviting.isTrue && !deletionStatusController.isVisible.value,
            sliver: InviteHeader(
              title: 'Invite  Affiliates',
              onBackPressed: () {
                controller.isInviting.toggle();
              },
            ),
          ),
          SliverVisibility(
            visible: controller.isInviting.isTrue && !deletionStatusController.isVisible.value,
            sliver: SliverToBoxAdapter(
              child: AddAffiliateView(),
            ),
          ),
        ],
      ),
    );
  }
}
