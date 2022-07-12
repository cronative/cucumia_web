import 'package:cucumia_admin/app/modules/magazine/controllers/magazine_controller.dart';
import 'package:cucumia_admin/models/Magazines.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PublishedMagTable extends GetResponsiveView<MagazineController> {
  PublishedMagTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return controller.allPublishedMagazine.isNotEmpty
        ? Padding(
            padding: const EdgeInsets.only(right: 2, top: 12),
            child: Obx(
              () => SingleChildScrollView(
                child: PaginatedDataTable(
                  showCheckboxColumn: false,
                  rowsPerPage: controller.allPublishedMagazine.isEmpty
                      ? 1
                      : controller.allPublishedMagazine.length < 10
                          ? controller.allPublishedMagazine.length
                          : 10,
                  columns: const [
                    DataColumn(label: Text('Magazine Name')),
                    DataColumn(label: Text('Company Name')),
                    DataColumn(label: Text('Subscription Fee')),
                    DataColumn(label: Text('Start Date')),
                    DataColumn(label: Text('End Date')),
                    DataColumn(label: Text('Publish Now')),
                  ],
                  columnSpacing: 10,
                  source: DataSource(context, controller.allPublishedMagazine),
                ),
              ),
            ),
          )
        : const Center(child: CircularProgressIndicator());
  }
}

class DataSource extends DataTableSource {
  DataSource(this.context, this.rows); //snapshot.data

  final BuildContext context;
  List<Magazines> rows;
  final int _selectedCount = 0;

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
            '${row.title}',
            maxLines: 1,
          ),
        ),
        DataCell(Text(
          '${row.usersID}',
        )),
        DataCell(Text('${row.lon}')),
        DataCell(Text('${row.website_url}')),
        DataCell(Text('${row.website_url}')),
        DataCell(ElevatedButton(
            onPressed: () {},
            child: const Text(
              "View",
              style: TextStyle(color: Colors.black),
            ),
            style: ElevatedButton.styleFrom(
                side: BorderSide(
                  width: 1.0,
                  color: Colors.black,
                ),
                primary: Colors.white))),
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
