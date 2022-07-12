import 'package:cucumia_admin/app/modules/users/affiliate/controllers/affiliate_controller.dart';
import 'package:cucumia_admin/app/modules/users/component/invite_affiliate_datasrc.dart';
import 'package:cucumia_admin/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';
import 'package:get/get.dart';

class AddAffiliateView extends GetResponsiveView<AffiliateController> {
  AffiliateController addAffiliateController = Get.put(AffiliateController());
  @override
  Widget build(BuildContext context) {
    screen.context = context;
    return FlutterDashboardListView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
            bottom: 20,
          ),
          sliver: SliverToBoxAdapter(child: _buildInviteMerchantsBox()),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
            bottom: 20,
          ),
          sliver: SliverToBoxAdapter(
              child: addAffiliateController.allInvitedAffiliates.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.only(right: 2, top: 12),
                      child: Obx(
                        () => PaginatedDataTable(
                          showCheckboxColumn: false,
                          rowsPerPage: addAffiliateController.allInvitedAffiliates.isEmpty
                              ? 1
                              : addAffiliateController.allInvitedAffiliates.length < 10
                                  ? addAffiliateController.allInvitedAffiliates.length
                                  : 10,
                          columns: const [
                            // DataColumn(label: Text('Icon')),
                            DataColumn(label: Text('User')),
                            DataColumn(label: Text('Stats')),
                            DataColumn(label: Text('Created Date')),
                            DataColumn(label: Text('Invitation ID')),
                          ],
                          columnSpacing: 10,
                          source: InviteAffiliateDataSource(context, addAffiliateController.allInvitedAffiliates),
                        ),
                      ),
                    )
                  : const Center(child: CircularProgressIndicator())),
        )
      ],
    );
  }

  Widget _buildInviteMerchantsBox() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.maxFinite,
          decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent), borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(() => Text("${addAffiliateController.addedAffiliates.length} Invites Generated")),
                Obx(
                  () => FlutterDashboardListView.grid(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    gridDelegate: screen.isPhone
                        ? FlutterDashboardGridDelegates.columns_2(width: screen.width, length: addAffiliateController.addedAffiliates.length)
                        : FlutterDashboardGridDelegates.fit(addAffiliateController.addedAffiliates.length, 4, 1),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    shrinkWrap: true,
                    isSliverItem: false,
                    childCount: addAffiliateController.addedAffiliates.length,
                    listType: FlutterDashboardListType.Grid,
                    buildItem: (BuildContext context, int index) {
                      return Center(
                        child: ListTile(
                          tileColor: Colors.white.withOpacity(0.4),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                          dense: true,
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                              addAffiliateController.addedAffiliates[index].imageurl!,
                            ),
                            radius: 15,
                          ),
                          title: Text(
                            '${addAffiliateController.addedAffiliates[index].merchantEmail}',
                            maxLines: 1,
                          ),
                          trailing: CircleAvatar(
                              maxRadius: 15,
                              backgroundColor: AppColors.green,
                              child: IconButton(
                                color: Colors.white,
                                icon: const Icon(Icons.close),
                                padding: EdgeInsets.zero,
                                iconSize: 15,
                                onPressed: () {
                                  addAffiliateController.removeAffiliate(addAffiliateController.addedAffiliates[index]);
                                },
                              )),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 210,
                  child: ListTile(
                    dense: true,
                    tileColor: Colors.white.withOpacity(0.4),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    leading: CircleAvatar(
                        maxRadius: 15,
                        backgroundColor: Colors.white,
                        child: IconButton(
                          icon: Icon(Icons.add),
                          padding: EdgeInsets.zero,
                          iconSize: 15,
                          onPressed: () {
                            _buildAddMerchantDialog();
                          },
                        )),
                    title: const Text("Add Affiliates"),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Send Invitation"),
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(AppColors.green)),
        )
      ],
    );
  }

  _buildAddMerchantDialog() {
    return Get.defaultDialog(
        title: "Add Affiliates",
        content: SizedBox(
          width: Get.width * 0.6,
          height: Get.height * 0.7,
          child: Obx(
            () => GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 350, childAspectRatio: 3, crossAxisSpacing: 20),
                itemCount: addAffiliateController.allUninvitedAffiliates.length,
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                    child: ListTile(
                      tileColor: const Color(0xff000000).withOpacity(0.3),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      dense: true,
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          addAffiliateController.allUninvitedAffiliates[index].imageurl!,
                        ),
                        radius: 15,
                      ),
                      title: Text(
                        '${addAffiliateController.allUninvitedAffiliates[index].merchantEmail}',
                        maxLines: 1,
                      ),
                      trailing: InkWell(
                        onTap: () {
                          addAffiliateController.addAffiliate(
                            addAffiliateController.allUninvitedAffiliates[index],
                          );
                        },
                        child: Container(
                            decoration: BoxDecoration(color: Colors.white.withOpacity(0.3), borderRadius: BorderRadius.circular(20)),
                            padding: const EdgeInsets.all(4),
                            child: const Text(
                              'Add',
                              style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                  );
                }),
          ),
        ));
  }
}
