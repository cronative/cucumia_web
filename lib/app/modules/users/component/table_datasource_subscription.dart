import 'package:cucumia_admin/app/data/demo_data.dart';
import 'package:cucumia_admin/models/SubscriptionLogs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';
import 'package:iconly/iconly.dart';

class DataSubscription extends DataTableSource {
  DataSubscription(this.context, this.rows); //snapshot.data

  final BuildContext context;
  List<SubscriptionLogs> rows;
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
              // CircleAvatar(
              //   radius: 20,
              //   backgroundImage: Image.network(
              //     row.imageurl,
              //     fit: BoxFit.cover,
              //   ).image,
              // ),
              // const SizedBox(
              //   width: 20,
              // ),
              RichText(
                textScaleFactor: Get.textScaleFactor,
                maxLines: 2,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '${row.id}',
                      style: DefaultTextStyle.of(context).style.copyWith(
                            fontSize: 14,
                          ),
                    ),
                    // const TextSpan(
                    //   text: '\n',
                    // ),
                    // TextSpan(
                    //   text: '${row.userID}',
                    //   style: DefaultTextStyle.of(context).style.copyWith(
                    //         fontSize: 12,
                    //       ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
        DataCell(Text('${row.shop_count}')),
        DataCell(Text('${row.mag_count}')),
        DataCell(Text('${row.purchase_date}')),
        // DataCell(Text('${row.Plan}')),
        DataCell(Text('\$ ${row.price}')),
        // DataCell(Container(
        //     decoration: BoxDecoration(color: Colors.grey.withOpacity(0.4), borderRadius: BorderRadius.circular(4)),
        //     padding: const EdgeInsets.all(4),
        //     child: Text(
        //       '${row.status}',
        //       style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        //     ))),
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
