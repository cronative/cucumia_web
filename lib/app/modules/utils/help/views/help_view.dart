import 'package:cached_network_image/cached_network_image.dart';
import 'package:cucumia_admin/app/modules/deletion_status/controllers/deletion_status_controller.dart';
import 'package:cucumia_admin/app/modules/deletion_status/views/deletion_status_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/help_controller.dart';

class HelpView extends GetView<HelpController> {
  const HelpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DeletionStatusController deletionStatusController = Get.put(DeletionStatusController());
    return Obx(() => Scaffold(
          appBar: deletionStatusController.isVisible.value == true
              ? AppBar()
              : AppBar(
                  title: const Text('HelpView'),
                  centerTitle: true,
                ),
          body: Column(
            children: [
              Visibility(
                visible: !deletionStatusController.isVisible.value,
                child: Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/cucumia-369c1.appspot.com/o/images%2FProfileImages%2Ff6031812-9a4e-40b5-9ae5-01dc2ad8db43.jpg?alt=media&token=e78344bb-8544-4230-aa01-5f7c12930f51'),
              ),
              // Image.memory(),
              // NetworkImage('https://firebasestorage.googleapis.com/v0/b/cucumia-369c1.appspot.com/o/images%2FProfileImages%2Ff6031812-9a4e-40b5-9ae5-01dc2ad8db43.jpg?alt=media&token=e78344bb-8544-4230-aa01-5f7c12930f51'),
              // MemoryImage(bytes)
              // CachedNetworkImage(
              //     imageUrl:
              //         'https://firebasestorage.googleapis.com/v0/b/cucumia-369c1.appspot.com/o/images%2FProfileImages%2Ff6031812-9a4e-40b5-9ae5-01dc2ad8db43.jpg?alt=media&token=e78344bb-8544-4230-aa01-5f7c12930f51')
              Visibility(
                child: DeletionStatusView(),
                visible: deletionStatusController.isVisible.value,
              ),
            ],
          ),
        ));
  }
}
