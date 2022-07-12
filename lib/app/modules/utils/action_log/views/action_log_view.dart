import 'package:cucumia_admin/app/modules/deletion_status/controllers/deletion_status_controller.dart';
import 'package:cucumia_admin/app/modules/deletion_status/views/deletion_status_view.dart';
import 'package:cucumia_admin/app/modules/utils/action_log/models/activity_log_model.dart';
import 'package:cucumia_admin/models/ActivityLog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import 'package:get/get.dart';

import '../controllers/action_log_controller.dart';
import 'components/header.dart';

DeletionStatusController deletionStatusController = Get.put(DeletionStatusController());

class ActionLogView extends GetResponsiveView<ActionLogController> {
  @override
  Widget build(BuildContext context) {
    screen.context = context;
    return Obx(() => FlutterDashboardListView(slivers: [
          SliverVisibility(
            visible: deletionStatusController.isVisible.value,
            sliver: SliverToBoxAdapter(
              child: DeletionStatusView(),
            ),
          ),
          SliverVisibility(
            visible: !deletionStatusController.isVisible.value,
            sliver: ActivityHeader(
              title: 'Activity Log',
            ),
          ),
          SliverVisibility(
            visible: !deletionStatusController.isVisible.value,
            sliver: SliverToBoxAdapter(
              child: controller.activityData.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.only(right: 2, top: 12),
                      child: PaginatedDataTable(
                        showCheckboxColumn: false,
                        rowsPerPage: controller.activityData.isEmpty
                            ? 1
                            : controller.activityData.length < 10
                                ? controller.activityData.length
                                : 10,
                        columns: const [
                          DataColumn(label: Text('User')),
                          DataColumn(label: Text('Actions')),
                          DataColumn(label: Text('Role')),
                          DataColumn(label: Text('Country')),
                          // DataColumn(label: Text('Area')),
                          DataColumn(label: Text('Date')),
                          // DataColumn(label: Text('Time')),
                          DataColumn(label: Text('Status')),
                        ],
                        columnSpacing: 20,
                        dataRowHeight: kMinInteractiveDimension + 20,
                        source: DataSource(context, controller.activityData),
                      ),
                    )
                  : const Center(child: CircularProgressIndicator()),
            ),
          ),
        ]));
  }
}

class DataSource extends DataTableSource {
  DataSource(this.context, this.rows); //snapshot.data

  final BuildContext context;
  List<ActivityLog> rows;
  int _selectedCount = 0;

  @override
  DataRow? getRow(int index) {
    assert(index >= 0);
    if (index >= rows.length) return null;
    final row = rows[index];
    return DataRow.byIndex(
      selected: false,
      index: index,
      onSelectChanged: (value) {},
      cells: [
        DataCell(
          Text(
            '${row.id}',
          ),
        ),
        // DataCell(Text('${row.exception_at}')),
        // DataCell(Text('${row.domain}')),
        // DataCell(Text('Denmark')),
        // DataCell(Text('${row.datetime.toString().substring(0, 10)}')),
        // // DataCell(Text('${row.exception.toString().substring(0, 10)}')),
        // DataCell(Text('${row.subdomain}')),
        // DataCell(
        //   Text(
        //     '${row.status}',
        //     style: TextStyle(color: row.status == 'Active' ? Color(0xFF2ED47A) : Colors.red, fontWeight: FontWeight.bold),
        //   ),
        // ),
      ],
    );
  }

  @override
  int get rowCount => rows.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => _selectedCount;
}
