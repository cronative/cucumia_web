import 'package:cucumia_admin/app/data/demo_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';
import 'package:iconly/iconly.dart';

class DataSourceAffiliates extends DataTableSource {
  DataSourceAffiliates(this.context, this.rows); //snapshot.data

  final BuildContext context;
  List<DemoAffiliate> rows;
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
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: Image.network(
                  row.imageurl,
                  fit: BoxFit.cover,
                ).image,
              ),
              const SizedBox(
                width: 20,
              ),
              RichText(
                textScaleFactor: Get.textScaleFactor,
                maxLines: 2,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '${row.userName}',
                      style: DefaultTextStyle.of(context).style.copyWith(
                            fontSize: 14,
                          ),
                    ),
                    const TextSpan(
                      text: '\n',
                    ),
                    TextSpan(
                      text: '${row.userID}',
                      style: DefaultTextStyle.of(context).style.copyWith(
                            fontSize: 12,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        DataCell(Text('${row.state}')),
        DataCell(Text('${row.InvitedBy}')),
        DataCell(Text('${row.revenue}')),
        DataCell(Text('${row.CreatedDate}')),
        DataCell(Row(
          children: [
            IconButton(
                onPressed: () {}, icon: const Icon(IconlyLight.edit_square)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.copy)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.delete))
          ],
        )),
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
