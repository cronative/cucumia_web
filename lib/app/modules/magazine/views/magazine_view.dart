import 'package:cucumia_admin/app/modules/deletion_status/controllers/deletion_status_controller.dart';
import 'package:cucumia_admin/app/modules/deletion_status/views/deletion_status_view.dart';
import 'package:cucumia_admin/app/modules/magazine/views/published_magazine_card.dart';
import 'package:cucumia_admin/app/modules/magazine/views/scheduled_magazine_card.dart';
import 'package:cucumia_admin/app/modules/magazine/widgets/add_mag_buttons.dart';
import 'package:cucumia_admin/app/modules/magazine/widgets/offer_mag_form.dart';
import 'package:cucumia_admin/app/modules/magazine/widgets/top_card_list.dart';
import 'package:cucumia_admin/models/Magazines.dart';
import 'package:flutter/material.dart';
import 'package:cucumia_admin/themes/app_theme.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';
import '../../../widgets/utils/padding_wrapper.dart';
import '../controllers/magazine_controller.dart';
import '../widgets/magazine_subscription.dart';
import '../widgets/online_mag_form.dart';
import 'magazine_cards.dart';

class MagazineView extends GetResponsiveView<MagazineController> {
  MagazineView({Key? key}) : super(key: key);
  DeletionStatusController deletionStatusController =
      Get.put(DeletionStatusController());
  @override
  Widget build(BuildContext context) {
    screen.context = context;
    return Obx(
      () => FlutterDashboardListView(shrinkWrap: true, slivers: [
        SliverVisibility(
          visible: deletionStatusController.isVisible.value,
          sliver: SliverToBoxAdapter(
            child: DeletionStatusView(),
          ),
        ),
        SliverVisibility(
          visible: !controller.showUploadButtons.value &&
              !deletionStatusController.isVisible.value &&
              !controller.showPublishedGrid.value &&
              !controller.showScheduledGrid.value &&
              !controller.showBuyMagazineSubcription.value,
          sliver: PaddingWrapper(
            isSliverItem: true,
            horizontalPadding: screen.isDesktop ? 50 : 20,
            topPadding: 10,
            bottomPadding: 10,
            child: SliverToBoxAdapter(
              child: Text(
                'Overview',
                style: DefaultTextStyle.of(screen.context).style.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      letterSpacing: 0.4,
                      color: Theme.of(context).primaryColor,
                    ),
                textScaleFactor: Get.textScaleFactor,
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ),
        SliverVisibility(
          visible: controller.showUploadButtons.value &&
              !controller.showOfferMagazineUploadForm.value &&
              !controller.showOnlineMagazineUploadForm.value &&
              !deletionStatusController.isVisible.value,
          sliver: AddMagazineButtonView(),
        ),
        SliverVisibility(
            visible: controller.showOfferMagazineUploadForm.value &&
                !deletionStatusController.isVisible.value,
            sliver: OfferMagFormView()),
        SliverVisibility(
            visible: controller.showOnlineMagazineUploadForm.value &&
                !deletionStatusController.isVisible.value,
            sliver: OnlineMagFormView()),
        SliverVisibility(
          visible: !controller.showPublishedGrid.value &&
              !controller.showScheduledGrid.value &&
              !controller.showUploadButtons.value &&
              !deletionStatusController.isVisible.value &&
              !controller.showBuyMagazineSubcription.value,
          sliver: TopCardsList(),
        ),
        SliverVisibility(
          visible: !controller.showPublishedGrid.value &&
              !controller.showScheduledGrid.value &&
              !controller.showUploadButtons.value &&
              !deletionStatusController.isVisible.value &&
              controller.showBuyMagazineSubcription.value,
          sliver: SliverToBoxAdapter(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          controller.showBuyMagazineSubcription(false);
                        },
                        icon: const Icon(Icons.arrow_back)),
                    Text(
                      'Buy Magazines Subscription',
                      textScaleFactor: Get.textScaleFactor,
                      style: DefaultTextStyle.of(context).style.copyWith(
                            fontSize: 20,
                            color: Colors.red,
                          ),
                    ),
                  ],
                ),
                BuyMagazineSubcriptionView(controller.onlineMagAddForm),
              ],
            ),
          ),
        ),
        // SliverVisibility(
        //   visible: !controller.showPublishedGrid.value &&
        //       !controller.showScheduledGrid.value &&
        //       !controller.showUploadButtons.value &&
        //       !deletionStatusController.isVisible.value &&
        //       !controller.showBuyMagazineSubcription.value,
        //   sliver: SliverFillRemaining(
        //     child: NestedScrollView(
        //       headerSliverBuilder: (BuildContext context, bool innesScrolled) {
        //         return [
        //           SliverOverlapAbsorber(
        //             handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
        //             sliver: PaddingWrapper(
        //               isSliverItem: true,
        //               horizontalPadding: 0,
        //               child: SliverAppBar(
        //                 centerTitle: false,
        //                 pinned: true,
        //                 toolbarHeight: 20,
        //                 backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        //                 automaticallyImplyLeading: false,
        //                 expandedHeight: kTextTabBarHeight,
        //                 collapsedHeight: kTextTabBarHeight + 20,
        //                 flexibleSpace: FlexibleSpaceBar(
        //                   background: TabBar(
        //                     isScrollable: true,
        //                     controller: controller.tabController,
        //                     indicatorSize: TabBarIndicatorSize.label,
        //                     overlayColor: MaterialStateProperty.resolveWith((states) {
        //                       return Colors.transparent;
        //                     }),
        //                     indicatorColor: Theme.of(context).primaryColor,
        //                     unselectedLabelColor: Theme.of(context).disabledColor,
        //                     onTap: controller.changeCurrentTab,
        //                     tabs: [
        //                       buildCustomTab(label: 'Active', isSelected: controller.currentTabIndex.value == 0, context: context),
        //                       buildCustomTab(label: "Published", isSelected: controller.currentTabIndex.value == 1, context: context),
        //                       buildCustomTab(label: 'Scheduled', isSelected: controller.currentTabIndex.value == 2, context: context),
        //                     ],
        //                   ),
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ];
        //       },
        //       body: TabBarView(
        //         controller: controller.tabController,
        //         children: [
        //           _buildActiveMagTable(context),
        //           PublishedMagTable(),
        //           ScheduledMagTable(),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        SliverVisibility(
          visible: controller.showPublishedGrid.value &&
              !deletionStatusController.isVisible.value,
          sliver: PaddingWrapper(
            isSliverItem: true,
            topPadding: 20,
            horizontalPadding: screen.isDesktop ? 30 : 20,
            child: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            controller.showPublishedGrid(false);
                          },
                          icon: const Icon(Icons.arrow_back)),
                      Text(
                        'Published Magazines',
                        textScaleFactor: Get.textScaleFactor,
                        style: DefaultTextStyle.of(context).style.copyWith(
                              fontSize: 20,
                              color: AppColors.greentext,
                            ),
                      ),
                    ],
                  ),
                  controller.isLoading.isFalse
                      ? FlutterDashboardListView.grid(
                          listType: FlutterDashboardListType.Grid,
                          childCount: controller.allPublishedMagazine.length,
                          isSliverItem: false,
                          buildItem: (_, index) => PublishedMagazineCard(
                            image: controller
                                .allPublishedMagazine[index].thumbnail
                                .toString(),
                            title: controller.allPublishedMagazine[index].title
                                .toString(),
                            userId: controller
                                .allPublishedMagazine[index].uploaded_on
                                .toString(),
                            websiteurl: controller
                                .allPublishedMagazine[index].offer_ends_on
                                .toString(),
                            // magaz: controller.allPublishedMagazine[index],
                          ),
                        )
                      : const Center(
                          child: CircularProgressIndicator(),
                        ),
                ],
              ),
            ),
          ),
        ),
        //Shimmer For loading cheduled Magazine
        // SliverVisibility(
        //   visible: controller.isLoadingForScheduled.value &&
        //       controller.showScheduledGrid.value &&
        //       !deletionStatusController.isVisible.value,
        //   sliver: PaddingWrapper(
        //     isSliverItem: true,
        //     topPadding: 5,
        //     horizontalPadding: screen.isDesktop ? 40 : 10,
        //     child: ShimmerHelper.buildGridShimmer(
        //       sliverItem: true,
        //       screen: screen,
        //       showIcon: true,
        //     ),
        //   ),
        // ),
        SliverVisibility(
          visible: controller.showScheduledGrid.value &&
              !deletionStatusController.isVisible.value,
          sliver: PaddingWrapper(
            isSliverItem: true,
            topPadding: 20,
            horizontalPadding: screen.isDesktop ? 30 : 20,
            child: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            controller.showScheduledGrid(false);
                          },
                          icon: const Icon(Icons.arrow_back)),
                      Text(
                        'Scheduled Magazines',
                        textScaleFactor: Get.textScaleFactor,
                        style: DefaultTextStyle.of(context).style.copyWith(
                              fontSize: 20,
                              color: AppColors.greentext,
                            ),
                      ),
                    ],
                  ),
                  controller.isLoadingForScheduled.isFalse
                      ? FlutterDashboardListView.grid(
                          listType: FlutterDashboardListType.Grid,
                          childCount: controller.allscheduledMagazine.length,
                          isSliverItem: false,
                          buildItem: (_, index) => ScheduledMagazineCard(
                            image: controller
                                .allscheduledMagazine[index].thumbnail
                                .toString(),
                            title: controller.allscheduledMagazine[index].title
                                .toString(),
                            userId: controller
                                .allscheduledMagazine[index].uploaded_on
                                .toString(),
                            websiteurl: controller
                                .allscheduledMagazine[index].offer_ends_on
                                .toString(),
                          ),
                        )
                      : const Center(
                          child: CircularProgressIndicator(),
                        ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }

  _buildActiveMagTable(BuildContext context) {
    return controller.allActiveMagazines.isNotEmpty
        ? Padding(
            padding: const EdgeInsets.only(right: 2, top: 12),
            child: Obx(
              () => SingleChildScrollView(
                child: PaginatedDataTable(
                  showCheckboxColumn: false,
                  rowsPerPage: controller.allActiveMagazines.isEmpty
                      ? 1
                      : controller.allActiveMagazines.length < 10
                          ? controller.allActiveMagazines.length
                          : 10,
                  columns: const [
                    DataColumn(label: Text('Magazine Name')),
                    DataColumn(label: Text('Company Name')),
                    DataColumn(label: Text('Subscription Fee')),
                    DataColumn(label: Text('Start Date')),
                    DataColumn(label: Text('End Date')),
                    DataColumn(label: Text('Cancel Mag')),
                  ],
                  columnSpacing: 10,
                  source: DataSource(context, controller.allActiveMagazines),
                ),
              ),
            ),
          )
        : const Center(child: CircularProgressIndicator());
  }
}

class DataSource extends DataTableSource {
  DataSource(this.context, this.rows); //snapshot.data

  final BuildContext context;
  List<Magazines> rows;
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
          Text(
            '${row.title}',
            maxLines: 1,
          ),
        ),
        DataCell(Text(
          '${row.usersID}',
        )),
        DataCell(Text('${row.lon}')),
        DataCell(Text('${row.website_url}')),
        DataCell(Text('${row.website_url}')),
        DataCell(ElevatedButton(
            onPressed: () {},
            child: const Text(
              "Cancel",
              style: TextStyle(color: Colors.black),
            ),
            style: ElevatedButton.styleFrom(
                side: const BorderSide(
                  width: 1.0,
                  color: Colors.black,
                ),
                primary: Colors.white))),
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
