import 'package:cached_network_image/cached_network_image.dart';
import 'package:cucumia_admin/app/data/demo_data.dart';
import 'package:cucumia_admin/app/modules/users/merchants/controllers/merchants_controller.dart';
import 'package:cucumia_admin/models/AdvertisementBanner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';
import 'package:iconly/iconly.dart';
import 'package:flutter_linkify/flutter_linkify.dart';

import '../../banner_ads/controllers/banner_ads_controller.dart';

class DataSourceBannerAds extends DataTableSource {
  DataSourceBannerAds(this.context, this.rows); //snapshot.data
  BannerAdsController controller = Get.put(BannerAdsController());
  final BuildContext context;
  List<AdvertisementBanner> rows;

  final int _selectedCount = 0;

  @override
  DataRow? getRow(int index) {
    assert(index >= 0);
    if (index >= rows.length) return null;
    RxBool isswitched = false.obs;
    final row = rows[index];
    return DataRow.byIndex(
      selected: false,
      index: index,
      onSelectChanged: (value) {},
      cells: [
        DataCell(
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: SizedBox(
                height: Get.size.height * 0.1,
                width: Get.size.width * 0.1,
                child: CachedNetworkImage(
                  imageUrl: row.img_token!,
                  progressIndicatorBuilder: (_, __, ___) =>
                      const Center(child: CircularProgressIndicator()),
                  errorWidget: (_, __, ___) => Padding(
                    padding: const EdgeInsets.all(5),
                    child: Image.asset(
                      "assets/img.png",
                      scale: 1,
                      height: 100,
                      // color: Theme.of(screen.context).iconTheme.color,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        DataCell(Text(
          '${row.lat} \n ${row.lon}',
          maxLines: 2,
        )),
        DataCell(SizedBox(
            width: Get.size.width * 0.25,
            child: GestureDetector(
              child: Text(
                  "${row.link_url?.substring(0, (row.link_url?.length) ?? 0)}",
                  style: const TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.blue)),
              onTap: () => controller.onOpen("${row.link_url}"),
            )

            // Linkify(
            //   onOpen: controller.onOpen,
            //   text: "${row.link_url?.substring(0, 15)} ",
            // ),
            )),
        DataCell(Text(
          '${row.link_url?.substring(0, 15)}',
          overflow: TextOverflow.ellipsis,
        )),
        const DataCell(Text('\$ 45')),
        DataCell(Obx(() => Switch(
              onChanged: (value) => isswitched.toggle(),
              value: isswitched.value,
              activeTrackColor: Colors.blue,
              activeColor: Colors.white,
              inactiveTrackColor: Colors.grey,
            ))),
        DataCell(Container(
            decoration: BoxDecoration(
                color: row.usersID == 'Active'
                    ? Colors.grey.withOpacity(0.4)
                    : row.usersID == 'Inactive'
                        ? Color(0xFFFF9F43).withOpacity(0.12)
                        : Color(0xFF6C757D).withOpacity(0.3),
                borderRadius: BorderRadius.circular(4)),
            padding: const EdgeInsets.all(4),
            child: Text(
              '${row.usersID}',
              style: TextStyle(
                  color: row.usersID == 'Active'
                      ? Colors.green
                      : row.usersID == 'Inactive'
                          ? Color(0xFFFF9F43)
                          : Color(0xFF82868B),
                  fontWeight: FontWeight.bold),
            ))),
        DataCell(Row(
          children: [
            IconButton(
                onPressed: () {}, icon: const Icon(IconlyLight.edit_square)),
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
