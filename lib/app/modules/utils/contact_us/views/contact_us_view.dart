import 'package:cucumia_admin/app/modules/deletion_status/controllers/deletion_status_controller.dart';
import 'package:cucumia_admin/app/modules/deletion_status/views/deletion_status_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/contact_us_controller.dart';

class ContactUsView extends GetView<ContactUsController> {
  @override
  Widget build(BuildContext context) {
    DeletionStatusController deletionStatusController = Get.put(DeletionStatusController());
    return Obx(() => Scaffold(
          appBar: !deletionStatusController.isVisible.value
              ? AppBar(
                  title: Text('ContactUsView'),
                  centerTitle: true,
                )
              : AppBar(),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Visibility(
                visible: !deletionStatusController.isVisible.value,
                child: Center(
                  child: Text(
                    'ContactUsView is working',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Visibility(
                child: DeletionStatusView(),
                visible: deletionStatusController.isVisible.value,
              ),
            ],
          ),
        ));
  }
}
