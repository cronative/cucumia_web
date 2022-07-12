import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cucumia_admin/app/modules/magazine/controllers/magazine_controller.dart';
import 'package:cucumia_admin/models/UserType.dart';
import 'package:cucumia_admin/services/auth_service.dart';
import 'package:cucumia_admin/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';
import 'package:get/get.dart';

import '../../../widgets/utils/padding_wrapper.dart';

class TopCardsList extends GetResponsiveView<MagazineController> {
  TopCardsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    screen.context = context;
    return Obx(
      () => PaddingWrapper(
          isSliverItem: true,
          topPadding: screen.isDesktop ? 30 : 20,
          horizontalPadding: screen.isDesktop
              ? 60
              : screen.isTablet
                  ? 35
                  : 20,
          child: SliverToBoxAdapter(
            child: (screen.isPhone) && !screen.context.isLargeTablet
                ? Column(
                    children: [
                      _buildPublishedMagCard(context),
                      _buildScheduledMagCard(context),
                      AuthService.to.loggedUser != UserType.SHOP_ADMIN ? _buildButtons() : Container(),
                    ],
                  )
                : SizedBox(
                    height: 275,
                    child: Row(
                      children: [
                        Expanded(
                          child: _buildPublishedMagCard(context),
                        ),
                        SizedBox(
                          width: Get.width * 0.005,
                        ),
                        Expanded(
                          child: _buildScheduledMagCard(context),
                        ),
                        SizedBox(
                          width: Get.width * 0.005,
                        ),
                        SizedBox(
                          width: 170,
                          child: AuthService.to.loggedUser != UserType.SHOP_ADMIN ? _buildButtons() : Container(),
                        ),
                      ],
                    ),
                  ),
          )),
    );
  }

  Widget _buildButtons() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: () {
            controller.showUploadButtons(true);
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Container(
              decoration: const BoxDecoration(
                  // gradient: LinearGradient(
                  //   colors: [
                  //     Color.fromRGBO(247, 91, 91, 1),
                  //     Color.fromRGBO(247, 91, 91, 0.7),
                  //   ],
                  //   begin: Alignment.bottomRight,
                  //   end: Alignment.topLeft,
                  // ),
                  color: AppColors.green),
              // width: 155,
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Center(
                    child: Text(
                  "Add to New\nMagazine",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            // controller.showUploadButtons(true);
            controller.showBuyMagazineSubcription(true);
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Container(
              decoration: const BoxDecoration(
                  // gradient: LinearGradient(
                  //   colors: [
                  //     Color.fromRGBO(247, 91, 91, 1),
                  //     Color.fromRGBO(247, 91, 91, 0.7),
                  //   ],
                  //   begin: Alignment.bottomRight,
                  //   end: Alignment.topLeft,
                  // ),
                  color: AppColors.greencard),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Center(
                    child: Text(
                  "Buy Magazine\nSubscription",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: AppColors.greentext),
                )),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Card _buildPublishedMagCard(BuildContext context) {
    return Card(
      child: Container(
        height: 275,
        decoration: const BoxDecoration(
            // gradient: LinearGradient(
            //   colors: [
            //     Color.fromRGBO(247, 91, 91, 1),
            //     Color.fromRGBO(247, 91, 91, 0.7),
            //   ],
            //   begin: Alignment.bottomRight,
            //   end: Alignment.topLeft,
            // ),
            color: Color(0xffD5E8CF)),
        child: Padding(
          padding: (!screen.isPhone && screen.context.isSmallTablet) && !screen.context.isLargeTablet
              ? const EdgeInsets.fromLTRB(15, 20, 15, 0)
              : const EdgeInsets.fromLTRB(35, 20, 20, 0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Published Magazines',
              overflow: TextOverflow.ellipsis,
              textScaleFactor: Get.textScaleFactor,
              style: DefaultTextStyle.of(context).style.copyWith(
                    fontSize: 20,
                    color: AppColors.greentext,
                  ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "${controller.allPublishedMagazine.length} Magazines Published This week",
              style: const TextStyle(color: AppColors.greentext),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 110,
              child: Row(
                // crossAxisAlignment:
                //     CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: FlutterDashboardListView.grid(
                      padding:
                          EdgeInsets.fromLTRB(0, 0, (!screen.isPhone && screen.context.isSmallTablet) && !screen.context.isLargeTablet ? 5 : 15, 0),
                      isSliverItem: false,
                      childCount: (screen.isPhone || screen.context.isSmallTablet) && !screen.context.isLargeTablet ? 2 : 3,
                      crossAxisSpacing: (!screen.isPhone && screen.context.isSmallTablet) && !screen.context.isLargeTablet ? 5 : 15,
                      buildItem: (BuildContext context, int index) {
                        return Card(
                          margin: EdgeInsets.zero,
                          color: const Color.fromRGBO(196, 196, 196, 1),
                          child: SizedBox(
                            height: 110,
                            // width: 85,
                            child: controller.allPublishedMagazine.isNotEmpty
                                ? CachedNetworkImage(
                                    imageUrl: controller.allPublishedMagazine[index].thumbnail.toString(),
                                    progressIndicatorBuilder: (context, url, progress) => Center(
                                      child: CircularProgressIndicator(
                                        color: Theme.of(context).indicatorColor,
                                      ),
                                    ),
                                    fit: BoxFit.fill,
                                  )
                                : const Center(child: CircularProgressIndicator()),
                          ),
                        );
                      },
                      listType: FlutterDashboardListType.Grid,
                      gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: (screen.isPhone || screen.context.isSmallTablet) && !screen.context.isLargeTablet ? 2 : 3),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      controller.showPublishedGrid(true);
                      if (controller.allPublishedMagazine.isEmpty) {
                        controller.fetchData();
                      }
                    },
                    child: Card(
                      margin: EdgeInsets.zero,
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xffF4F1F1),
                              Color(0xffEAE5E5),
                            ],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                          ),
                        ),
                        // padding: const EdgeInsets.all(8),
                        height: 110,
                        width: 60,
                        child: const Center(child: Text("See All")),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }

  _buildScheduledMagCard(BuildContext context) {
    return Card(
      child: Container(
        height: 275,
        decoration: const BoxDecoration(
          // gradient: LinearGradient(
          //   colors: [
          //     Color.fromRGBO(247, 91, 91, 1),
          //     Color.fromRGBO(247, 91, 91, 0.7),
          //   ],
          //   begin: Alignment.bottomRight,
          //   end: Alignment.topLeft,
          // ),
          color: AppColors.bluecard,
        ),
        child: Padding(
          padding: (!screen.isPhone && screen.context.isSmallTablet) && !screen.context.isLargeTablet
              ? const EdgeInsets.fromLTRB(15, 20, 15, 0)
              : const EdgeInsets.fromLTRB(35, 20, 20, 0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Scheduled Magazines',
              overflow: TextOverflow.ellipsis,
              textScaleFactor: Get.textScaleFactor,
              style: DefaultTextStyle.of(context).style.copyWith(fontSize: 20, color: AppColors.bluetext),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "${controller.allscheduledMagazine.length} Magazines Scheduled This week",
              style: const TextStyle(color: AppColors.bluetext),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 110,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: FlutterDashboardListView.grid(
                      padding:
                          EdgeInsets.fromLTRB(0, 0, (!screen.isPhone && screen.context.isSmallTablet) && !screen.context.isLargeTablet ? 5 : 15, 0),
                      isSliverItem: false,
                      childCount: (screen.isPhone || screen.context.isSmallTablet) && !screen.context.isLargeTablet ? 2 : 3,
                      crossAxisSpacing: (!screen.isPhone && screen.context.isSmallTablet) && !screen.context.isLargeTablet ? 5 : 15,
                      buildItem: (BuildContext context, int index) {
                        return Card(
                          margin: EdgeInsets.zero,
                          color: const Color.fromRGBO(196, 196, 196, 1),
                          child: SizedBox(
                            height: 110,
                            child: controller.allscheduledMagazine.isNotEmpty
                                ? CachedNetworkImage(
                                    imageUrl: controller.allscheduledMagazine[index].thumbnail.toString(),
                                    progressIndicatorBuilder: (context, url, progress) => Center(
                                      child: CircularProgressIndicator(
                                        color: Theme.of(context).indicatorColor,
                                      ),
                                    ),
                                    fit: BoxFit.fill,
                                  )
                                : const Center(
                                    child: CircularProgressIndicator(),
                                  ),
                          ),
                        );
                      },
                      listType: FlutterDashboardListType.Grid,
                      gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: (screen.isPhone || screen.context.isSmallTablet) && !screen.context.isLargeTablet ? 2 : 3),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      controller.showScheduledGrid(true);
                      if (controller.allscheduledMagazine.isEmpty) {
                        controller.fetchAllScheduledMagazine();
                      }
                    },
                    child: Card(
                      margin: EdgeInsets.zero,
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xffF4F1F1),
                              Color(0xffEAE5E5),
                            ],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                          ),
                        ),
                        // padding: const EdgeInsets.all(8),
                        height: 110,
                        width: 60,
                        child: const Center(child: Text("See All")),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
