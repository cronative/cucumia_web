import 'package:cucumia_admin/app/modules/deletion_status/controllers/deletion_status_controller.dart';
import 'package:cucumia_admin/app/modules/deletion_status/views/deletion_status_view.dart';
import 'package:cucumia_admin/app/modules/subscriptions/views/payment_gateway_view.dart';
import 'package:cucumia_admin/app/modules/subscriptions/views/shop_subscription.dart';
import 'package:cucumia_admin/app/modules/users/component/header_for_subscription.dart';
import 'package:cucumia_admin/app/modules/users/component/table_datasource_subscription.dart';
import 'package:cucumia_admin/app/modules/utils/action_log/views/components/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';

import 'package:get/get.dart';

import '../../users/component/header_invite.dart';
import '../controllers/subscriptions_controller.dart';

DeletionStatusController deletionStatusController =
    Get.put(DeletionStatusController());

class SubscriptionsView extends GetResponsiveView<SubscriptionsController> {
  @override
  Widget build(BuildContext context) {
    screen.context = context;
    return Obx(
      () => FlutterDashboardListView(slivers: [
        SliverVisibility(
          visible: deletionStatusController.isVisible.value,
          sliver: SliverToBoxAdapter(
            child: DeletionStatusView(),
          ),
        ),
        SliverVisibility(
          visible: controller.isBuying.isFalse &&
              !deletionStatusController.isVisible.value &&
              !controller.payView.isTrue,
          sliver: UsersHeader2(
            title: 'Subscriptions',
            onsubbuy: () {
              controller.isBuying(true);
            },
          ),
        ),
        SliverVisibility(
          visible: !controller.isLoading.value &&
              controller.isBuying.isFalse &&
              !controller.payView.isTrue &&
              !deletionStatusController.isVisible.value,
          sliver: SliverToBoxAdapter(
            child: controller.subscriptionData.isNotEmpty
                ? Padding(
                    padding: const EdgeInsets.only(right: 2, top: 12),
                    child: PaginatedDataTable(
                      showCheckboxColumn: false,
                      rowsPerPage: controller.subscriptionData.isEmpty
                          ? 1
                          : controller.subscriptionData.length < 10
                              ? controller.subscriptionData.length
                              : 10,
                      columns: const [
                        DataColumn(label: Text('License ID')),
                        DataColumn(label: Text('Shop Count')),
                        DataColumn(label: Text('Magazine Count')),
                        DataColumn(label: Text('Purchase Date')),
                        // DataColumn(label: Text('Plan')),
                        DataColumn(label: Text('Amount')),
                        // DataColumn(label: Text('Status')),
                      ],
                      columnSpacing: 20,
                      dataRowHeight: kMinInteractiveDimension + 20,
                      source: DataSubscription(
                          context, controller.subscriptionData),
                    ),
                  )
                : const Center(child: CircularProgressIndicator()),
          ),
        ),
        SliverVisibility(
          visible: controller.isBuying.isTrue &&
              !controller.payView.isTrue &&
              !deletionStatusController.isVisible.value,
          sliver: InviteHeader(
            onBackPressed: () {
              controller.isBuying.toggle();
            },
            title: 'Purchase Subscription',
          ),
        ),
        SliverVisibility(
          visible: controller.isBuying.isTrue &&
              !deletionStatusController.isVisible.value,
          sliver: SliverToBoxAdapter(
            child: BuyShopSubcriptionView(),
          ),
        ),
        SliverVisibility(
          visible: !controller.isBuying.isTrue &&
              controller.payView.isTrue &&
              !deletionStatusController.isVisible.value,
          sliver: SliverToBoxAdapter(
            child: PaymentGatewayView(),
          ),
        ),
      ]),
    );
  }
}
