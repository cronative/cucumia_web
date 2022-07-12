import 'package:cucumia_admin/app/data/demo_data.dart';
import 'package:cucumia_admin/app/modules/users/component/invite_merchant_datasrc.dart';
import 'package:cucumia_admin/app/modules/users/merchants/controllers/merchants_controller.dart';
import 'package:cucumia_admin/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';

class AddMerchantView extends GetResponsiveView<MerchantsController> {
  MerchantsController addMerchantController = Get.put(MerchantsController());
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
              child: addMerchantController.allInvitedMerchants.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.only(right: 2, top: 12),
                      child: Obx(
                        () => PaginatedDataTable(
                          showCheckboxColumn: false,
                          rowsPerPage: addMerchantController.allInvitedMerchants.isEmpty
                              ? 1
                              : addMerchantController.allInvitedMerchants.length < 10
                                  ? addMerchantController.allInvitedMerchants.length
                                  : 10,
                          columns: const [
                            // DataColumn(label: Text('Icon')),
                            DataColumn(label: Text('User')),
                            DataColumn(label: Text('Stats')),
                            DataColumn(label: Text('Created Date')),
                            DataColumn(label: Text('Invitation ID')),
                          ],
                          columnSpacing: 10,
                          source: InviteDataSource(context, addMerchantController.allInvitedMerchants),
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
                Obx(() => Text("${addMerchantController.addedMerchants.length} Invites Generated")),
                Obx(
                  () => FlutterDashboardListView.grid(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    gridDelegate: screen.isPhone
                        ? FlutterDashboardGridDelegates.columns_2(width: screen.width, length: addMerchantController.addedMerchants.length)
                        : FlutterDashboardGridDelegates.fit(addMerchantController.addedMerchants.length, 4, 1),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    shrinkWrap: true,
                    isSliverItem: false,
                    childCount: addMerchantController.addedMerchants.length,
                    listType: FlutterDashboardListType.Grid,
                    buildItem: (BuildContext context, int index) {
                      return Center(
                        child: ListTile(
                          tileColor: Colors.white.withOpacity(0.4),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                          dense: true,
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                              addMerchantController.addedMerchants[index].imageurl!,
                            ),
                            radius: 15,
                          ),
                          title: Text(
                            '${addMerchantController.addedMerchants[index].merchantEmail}',
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
                                  addMerchantController.removeMerchant(addMerchantController.addedMerchants[index]);
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
                    title: const Text("Add Merchants"),
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
        title: "Add Merchants",
        content: SizedBox(
          width: Get.width * 0.6,
          height: Get.height * 0.7,
          child: Obx(
            () => GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 350, childAspectRatio: 3, crossAxisSpacing: 20),
                itemCount: addMerchantController.allUninvitedMerchants.length,
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                    child: ListTile(
                      tileColor: const Color(0xff000000).withOpacity(0.3),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      dense: true,
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          addMerchantController.allUninvitedMerchants[index].imageurl!,
                        ),
                        radius: 15,
                      ),
                      title: Text(
                        '${addMerchantController.allUninvitedMerchants[index].merchantEmail}',
                        maxLines: 1,
                      ),
                      trailing: InkWell(
                        onTap: () {
                          addMerchantController.addMerchant(addMerchantController.allUninvitedMerchants[index]);
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
