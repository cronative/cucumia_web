import 'package:cached_network_image/cached_network_image.dart';
import 'package:cucumia_admin/app/modules/deletion_status/controllers/deletion_status_controller.dart';
import 'package:cucumia_admin/app/modules/deletion_status/views/deletion_status_view.dart';
import 'package:cucumia_admin/app/modules/shop_listing/views/components/shop_card.dart';
import 'package:cucumia_admin/app/modules/shop_listing/views/components/shop_detailscard.dart';
import 'package:cucumia_admin/app/modules/shop_listing/views/components/shop_image.dart';
import 'package:cucumia_admin/app/modules/shop_listing/views/invite_shop.dart';
import 'package:cucumia_admin/app/modules/shop_listing/views/widgets/editing_dialogbox_for_shop.dart';
import 'package:cucumia_admin/app/modules/shop_listing/views/widgets/shop_header.dart';
import 'package:cucumia_admin/app/modules/users/component/header_invite.dart';
import 'package:cucumia_admin/app/widgets/components/export_button.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import '../controllers/shop_listing_controller.dart';
import 'package:cucumia_admin/app/modules/shop_listing/views/widgets/shop_details_table.dart';
import 'package:cucumia_admin/app/widgets/utils/padding_wrapper.dart';
import 'package:cucumia_admin/app/widgets/utils/shimmer_helper.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';

class ShopListingView extends GetResponsiveView<ShopListingController> {
  ShopListingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    screen.context = context;

    DeletionStatusController deletionStatusController = Get.put(DeletionStatusController());

    return Obx(
      () => FlutterDashboardListView(
        shrinkWrap: true,
        // scrollController: ScrollController(),
        slivers: [
          SliverVisibility(
            visible: deletionStatusController.isVisible.value,
            sliver: SliverToBoxAdapter(
              child: DeletionStatusView(),
            ),
          ),
          SliverVisibility(
            visible: !controller.isLoading.value &&
                controller.allShops1.isNotEmpty &&
                !controller.showShopDetails.value &&
                controller.createNewShop.value &&
                !deletionStatusController.isVisible.value,
            sliver: InviteHeader(
              title: "We are Inviting shop Admins",
              onBackPressed: () {
                controller.createNewShop.value = false;
              },
              // subTitle: "Shops Listed",
              // totalCount: controller.allShops1.length,
              // onCreateNew: () {
              //   print('created new shop');
              //   controller.createNewShop(true);
              // },
              // actions: [],
            ),
          ),
          SliverVisibility(
            visible: !controller.isLoading.value &&
                controller.allShops1.isNotEmpty &&
                !controller.showShopDetails.value &&
                controller.createNewShop.value &&
                !deletionStatusController.isVisible.value,
            sliver: SliverToBoxAdapter(
              child: AddShopView(),
            ),
          ),
          SliverVisibility(
            visible: controller.isLoading.value &&
                controller.allShops1.isEmpty &&
                !controller.showShopDetails.value &&
                !controller.createNewShop.value &&
                !deletionStatusController.isVisible.value,
            sliver: PaddingWrapper(
              isSliverItem: true,
              topPadding: 5,
              horizontalPadding: screen.isDesktop ? 40 : 10,
              child: ShimmerHelper.buildGridShimmer(
                sliverItem: true,
                screen: screen,
                showIcon: true,
              ),
            ),
          ),
          SliverVisibility(
            visible: controller.showShopDetails.value && !controller.createNewShop.value && !deletionStatusController.isVisible.value,
            sliver: PaddingWrapper(
                isSliverItem: true,
                topPadding: 20,
                horizontalPadding: screen.isDesktop ? 30 : 20,
                child: SliverToBoxAdapter(
                  child: Column(
                    children: [
                      screen.isPhone
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          controller.showShopDetails(false);
                                        },
                                        icon: const Icon(Icons.arrow_back)),
                                    const Text("Back"),
                                  ],
                                ),
                                Center(child: _buildButtons(context)),
                              ],
                            )
                          : Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      controller.showShopDetails(false);
                                    },
                                    icon: const Icon(Icons.arrow_back)),
                                const Text("Back"),
                                const Spacer(),
                                _buildButtons(context),
                              ],
                            ),
                      const SizedBox(
                        height: 10,
                      ),
                      (screen.isPhone)
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ShopImageCard(controller.shopdetails),
                                ShopDetailsCard(controller.shopdetails),
                              ],
                            )
                          : Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ShopImageCard(controller.shopdetails),
                                ShopDetailsCard(controller.shopdetails),
                              ],
                            ),
                      ShopDetailTable(),
                    ],
                  ),
                )),
          ),
          SliverVisibility(
            visible: !controller.isLoading.value &&
                controller.allShops1.isNotEmpty &&
                !controller.showShopDetails.value &&
                !controller.createNewShop.value &&
                !deletionStatusController.isVisible.value,
            sliver: ShopListingHeader(
                title: "Shops",
                subTitle: "Shops Listed",
                totalCount: controller.allShops1.length,
                onCreateNew: () {
                  controller.createNewShop(true);
                  print('pressed from shop');
                },
                actions: [
                  //   DropdownButtonHideUnderline(
                  //     child: DropdownButton2(
                  //       dropdownWidth: 120,
                  //       customButton: DecoratedBox(
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(8.0),
                  //           border: Border.all(
                  //             color: Theme.of(screen.context).disabledColor,
                  //           ),
                  //         ),
                  //         child: Padding(
                  //           padding: const EdgeInsets.symmetric(
                  //             horizontal: 10,
                  //             vertical: 10,
                  //           ),
                  //           child: Row(
                  //             children: [
                  //               Text(
                  //                 'Today',
                  //                 textScaleFactor: Get.textScaleFactor,
                  //                 style: DefaultTextStyle.of(screen.context).style.copyWith(
                  //                       color: Theme.of(screen.context).disabledColor,
                  //                       fontSize: 14,
                  //                     ),
                  //               ),
                  //               const SizedBox(
                  //                 width: 10,
                  //               ),
                  //               Icon(
                  //                 IconlyLight.arrow_down_2,
                  //                 size: 14,
                  //                 color: Theme.of(screen.context).disabledColor,
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       items: <String>['01/12/2020', '01/12/2021', '01/12/2022', '01/12/2023'].map((String value) {
                  //         return DropdownMenuItem<String>(
                  //           value: value,
                  //           child: Text(value),
                  //         );
                  //       }).toList(),
                  //       onChanged: (String? value) {
                  //         print(value);
                  //       },
                  //     ),
                  //   ),
                  //   const SizedBox(
                  //     width: 10,
                  //   ),
                  //   ExportButton(),
                  // ],
                ]),
          ),
          SliverVisibility(
            visible: !controller.isLoading.value &&
                controller.allShops1.isNotEmpty &&
                !controller.showShopDetails.value &&
                !controller.createNewShop.value &&
                !deletionStatusController.isVisible.value,
            sliver: PaddingWrapper(
              isSliverItem: true,
              topPadding: 5,
              horizontalPadding: screen.isDesktop ? 40 : 10,
              child: FlutterDashboardListView.grid(
                isSliverItem: true,
                childCount: controller.allShops1.length,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                gridDelegate: !screen.isDesktop
                    ? screen.width <= 756
                        ? FlutterDashboardGridDelegates.columns_1(
                            width: screen.width,
                            length: controller.allShops1.length,
                          )
                        : FlutterDashboardGridDelegates.columns_2(
                            width: screen.width,
                            length: controller.allShops1.length,
                          )
                    : screen.width <= 1700
                        ? screen.width <= 1450
                            ? screen.width <= 1240
                                ? FlutterDashboardGridDelegates.columns_2(
                                    width: screen.width,
                                    length: controller.allShops1.length,
                                  )
                                : FlutterDashboardGridDelegates.columns_3(
                                    width: screen.width,
                                    length: controller.allShops1.length,
                                  )
                            : FlutterDashboardGridDelegates.columns_3(
                                width: screen.width,
                                length: controller.allShops1.length,
                              )
                        : FlutterDashboardGridDelegates.columns_5(
                            width: screen.width,
                            length: controller.allShops1.length,
                          ),
                // gridDelegate:
                buildItem: (BuildContext context, int index) {
                  return ShopCard(
                    isMasterListItem: true,
                    shopItem: controller.allShops1[index],
                    index: index,
                  );
                },
                listType: FlutterDashboardListType.Grid,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButtons(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        MaterialButton(
          onPressed: () {
            // await Future.delayed(2.seconds);
            Get.dialog(AlertDialog(
              content: SizedBox(width: 433, height: 419, child: EditBox(context)),
            ));
          },
          height: 50,
          minWidth: 120,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: const BorderSide(
              color: Colors.green,
            ),
          ),
          child: Row(
            children: [
              const Icon(
                IconlyLight.edit_square,
                size: 14,
                color: Colors.green,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Edit Shop',
                textScaleFactor: Get.textScaleFactor,
                style: DefaultTextStyle.of(screen.context).style.copyWith(
                      color: Colors.green,
                      fontSize: 14,
                    ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        MaterialButton(
          onPressed: () {},
          height: 50,
          minWidth: 120,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: const BorderSide(
              color: Colors.red,
            ),
          ),
          child: Row(
            children: [
              const Icon(
                IconlyLight.delete,
                size: 14,
                color: Colors.red,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Delete Shop',
                textScaleFactor: Get.textScaleFactor,
                style: DefaultTextStyle.of(screen.context).style.copyWith(
                      color: Colors.red,
                      fontSize: 14,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
