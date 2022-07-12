import 'package:cached_network_image/cached_network_image.dart';
import 'package:cucumia_admin/models/ModelProvider.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';

class DSforBundleProduct extends DataTableSource {
  DSforBundleProduct(this.rows); //snapshot.data

  RxList<Product> rows;
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
              //   backgroundImage: CachedNetworkImageProvider(
              //     row[0],
              //     // fit: BoxFit.cover,
              //   ),
              // ),
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
                    imageUrl: row.img_token!,
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
                      text: '${row.name.toString()}',
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
        DataCell(Text('\$ ${row.price}')),
        DataCell(Text('\$ ${row.discount}')),
        DataCell(Text(' ${row.expires_on}')),
        // DataCell(Text(' ${row.available_from}')),
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
