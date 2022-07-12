import 'package:cucumia_admin/app/modules/products/products_listing/controllers/products_listing_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';
import 'package:get/get.dart';

class BundleListView extends GetResponsiveView<ProductsListingController> {
  ProductsListingController BundleController =
      Get.put(ProductsListingController());
  @override
  Widget build(BuildContext context) {
    screen.context = context;
    return FlutterDashboardListView(
      slivers: const [
        SliverPadding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
            bottom: 20,
          ),
          sliver: SliverToBoxAdapter(child: Text('hello')),
        ),
      ],
    );
  }
}
