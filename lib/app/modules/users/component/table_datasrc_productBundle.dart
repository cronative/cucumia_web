import 'package:cached_network_image/cached_network_image.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';

class DSforBundle extends DataTableSource {
  DSforBundle(this.rows); //snapshot.data

  List<dynamic> rows;
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
              AnimatedContainer(
                  duration: kThemeChangeDuration,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  constraints: const BoxConstraints(
                    maxHeight: math.pi * 25,
                    minHeight: math.pi * 25,
                    minWidth: math.pi * 25,
                    maxWidth: math.pi * 25,
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: CachedNetworkImage(
                    imageUrl: row[0].toString(),
                    fit: BoxFit.fill,
                    progressIndicatorBuilder: (_, __, ___) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  )),
              const SizedBox(
                width: 20,
              ),
              RichText(
                textScaleFactor: Get.textScaleFactor,
                maxLines: 2,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '${row[1].toString()}',
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // DataCell(Text('${row[1]}')),
        DataCell(Text('\$ ${row[2].toString()}')),
        DataCell(Text('\$ ${row[3].toString()}')),
        DataCell(Text(row[4].toString())),
        DataCell(Text(row[5].toString())),
        DataCell(Text(row[6].toString())),
        DataCell(Text(row[7].toString())),
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
