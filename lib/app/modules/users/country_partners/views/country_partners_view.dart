import 'package:cucumia_admin/app/modules/deletion_status/controllers/deletion_status_controller.dart';
import 'package:cucumia_admin/app/modules/deletion_status/views/deletion_status_view.dart';
import 'package:cucumia_admin/app/modules/users/component/header.dart';
import 'package:cucumia_admin/app/modules/users/component/header_invite.dart';
import 'package:cucumia_admin/app/modules/users/country_partners/views/widgets/table_data_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';

import '../controllers/country_partners_controller.dart';
import 'invite_country_partners_view.dart';

DeletionStatusController deletionStatusController = Get.put(DeletionStatusController());

class CountryPartnersView extends GetResponsiveView<CountryPartnersController> {
  CountryPartnersView({Key? key}) : super(key: key);

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
                title: 'Country Partner',
                onCreateNew: () {
                  controller.isInviting.toggle();
                  print("Create");
                }),
          ),
          SliverVisibility(
            visible: controller.isInviting.isFalse && !deletionStatusController.isVisible.value,
            sliver: SliverToBoxAdapter(
              child: controller.userData.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.only(right: 2, top: 12),
                      child: PaginatedDataTable(
                        showCheckboxColumn: false,
                        rowsPerPage: controller.userData.isEmpty
                            ? 1
                            : controller.userData.length < 10
                                ? controller.userData.length
                                : 10,
                        columns: const [
                          DataColumn(label: Text('Name')),
                          DataColumn(label: Text('Country')),
                          DataColumn(label: Text('contact')),
                          DataColumn(label: Text('Status')),
                          DataColumn(label: Text('ACTIONS')),
                        ],
                        columnSpacing: 20,
                        dataRowHeight: kMinInteractiveDimension + 20,
                        source: DataSourceCP(context, controller.userData),
                      ),
                    )
                  : const Center(child: CircularProgressIndicator()),
            ),
          ),
          SliverVisibility(
            visible: controller.isInviting.isTrue && !deletionStatusController.isVisible.value,
            sliver: InviteHeader(
              onBackPressed: () {
                controller.isInviting.toggle();
              },
              title: 'Invite Country Partner',
            ),
          ),
          SliverVisibility(
            visible: controller.isInviting.isTrue && !deletionStatusController.isVisible.value,
            sliver: SliverToBoxAdapter(
              child: AddCountryPartnerView(),
            ),
          ),
        ],
      ),
    );
  }
}
