import 'package:cucumia_admin/app/modules/products/matser_list/controllers/matser_list_controller.dart';
import 'package:cucumia_admin/app/modules/products/matser_list/views/components/image_viewer_for_masterlist.dart';
import 'package:cucumia_admin/models/ProductDealType.dart';
import 'package:cucumia_admin/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';
import 'package:get/get.dart';

class createProductImagesRow extends GetResponsiveView {
  createProductImagesRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    screen.context = context;
    MatserListController controller = Get.find<MatserListController>();
    Widget buildImageCard(RxString imageUrl, RxBool loading) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Material(
            // decoration: BoxDecoration(),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: const BorderSide(
                color: Color.fromARGB(255, 12, 2, 54),
                width: 2,
              ),
            ),
            clipBehavior: Clip.hardEdge,
            color: Theme.of(screen.context).scaffoldBackgroundColor,
            child: InkWell(
              onTap: () {
                controller.pickImage(imageUrl, loading);
              },
              child: PicViewerMasterLising(20, imageUrl, loading),
            ),
          ),
        ],
      );
    }

    return Row(
      children: [
        buildImageCard(controller.productImageUrl0, controller.isPicUploading0),
        const SizedBox(
          width: 30,
        ),
        buildImageCard(controller.productImageUrl1, controller.isPicUploading1),
        const SizedBox(
          width: 30,
        ),
        buildImageCard(controller.productImageUrl2, controller.isPicUploading2),
      ],
    );
  }
}
