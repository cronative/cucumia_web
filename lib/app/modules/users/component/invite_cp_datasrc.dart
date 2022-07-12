import 'package:cucumia_admin/app/data/demo_data.dart';
import 'package:cucumia_admin/themes/app_theme.dart';
import 'package:flutter/material.dart';

class InviteCPDataSource extends DataTableSource {
  InviteCPDataSource(this.context, this.rows); //snapshot.data

  final BuildContext context;
  List<InviteCPData> rows;
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
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                row.imageurl!,
              ),
              radius: 15,
            ),
            title: Text(
              '${row.merchantEmail}',
              maxLines: 1,
            ),
          ),
        ),
        DataCell(Container(
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.3), borderRadius: BorderRadius.circular(4)),
            padding: const EdgeInsets.all(4),
            child: Text(
              '${row.stats}',
              style: TextStyle(
                  color: row.stats == 'Pending'
                      ? const Color.fromRGBO(255, 185, 70, 1)
                      : row.stats == 'Completed'
                          ? Colors.green
                          : Colors.white,
                  fontWeight: FontWeight.bold),
            ))),
        DataCell(Text('${row.invitedDate}')),
        DataCell(ElevatedButton(
          onPressed: () {},
          child: const Text("Send Invitation"),
          style: ButtonStyle(
              backgroundColor: row.stats == 'Completed'
                  ? MaterialStateProperty.all<Color>(AppColors.green)
                  : MaterialStateProperty.all<Color>(Theme.of(context).disabledColor)),
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
