import 'dart:convert';
import 'dart:typed_data';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cucumia_admin/app/modules/utils/account/controllers/account_controller.dart';
import 'package:cucumia_admin/app/widgets/components/animated_submit_button.dart';
import 'package:cucumia_admin/services/data_service.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import 'account_image.dart';

class AccountInfo extends GetWidget<AccountController> {
  double? radius;
  double defaultRadius = Get.height * 0.15;
  String? platform;
  AccountInfo({Key? key, this.radius}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: EdgeInsets.only(top: (radius ?? defaultRadius) / 3 * 2),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildAccountPic(
                  10,
                ),
                SizedBox(height: radius ?? defaultRadius),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        Text(
                          "10",
                          // "${controller.user.value.merchants}",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Merchants",
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          // "${controller.user.value.countryPartners}",
                          "20",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Country Partners",
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          // "${controller.user.value.affiliates}",
                          "30",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Affiliates",
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.05,
                ),
                Text(
                  "${controller.userService.user.value!.fullname}",
                  style: const TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: Get.height * 0.015,
                ),
                Container(
                  decoration: BoxDecoration(color: Color(0xFFDF0019).withOpacity(0.3), borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: Text(EnumToString.convertToString(controller.userService.user.value!.user_type)),
                ),
                SizedBox(
                  height: Get.height * 0.025,
                ),
                Text(controller.userService.user.value!.email!),
                SizedBox(
                  height: Get.height * 0.015,
                ),
                Text(
                  "${controller.userService.user.value!.phn_number}",
                  style: const TextStyle(fontSize: 16),
                ),
                Divider(
                  height: Get.height * 0.1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAccountPic(double radius) {
    double defaultRadius = Get.height * 0.15;
    return SizedBox(
      height: Get.height * 0.3,
      child: Center(
        child: SizedBox.square(
          dimension: Get.width * 0.4,
          child: Stack(
            fit: StackFit.expand,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            alignment: Alignment.center,
            children: [
              Obx(
                () => controller.isPicUploading.value
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : Material(
                        elevation: 2,
                        // color: Theme.of(context).cardColor,
                        shape: const CircleBorder(),
                        clipBehavior: Clip.hardEdge,
                        child: InkWell(
                          onTap: controller.pickImage,
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                              minWidth: 2.0 * radius,
                              minHeight: 2.0 * radius,
                              maxWidth: 2.0 * radius,
                              maxHeight: 2.0 * radius,
                            ),
                            child: CachedNetworkImage(
                              imageUrl: controller.userImageUrl.value,
                              progressIndicatorBuilder: (_, __, ___) => const CircularProgressIndicator(),
                              errorWidget: (_, __, ___) => const Icon(
                                IconlyLight.profile,
                              ),
                            ),
                          ),
                        ),
                      ),
              ),
              // Positioned(
              //   right: 10,
              //   bottom: 10,
              //   child: IconButton(
              //     onPressed: controller.pickImage,
              //     icon: const Icon(IconlyLight.editSquare),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAccountPic2() {
    return SizedBox(
      height: Get.height * 0.3,
      child: Center(
        child: SizedBox.square(
          dimension: Get.width * 0.4,
          child: Stack(
            fit: StackFit.expand,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            alignment: Alignment.center,
            children: [
              InkWell(
                onTap: controller.pickImage,
                child: Center(
                  child: AccountImage(
                    image: controller.userImageUrl.value,
                    radius: radius ?? defaultRadius,
                  ),
                ),
              ),
              // Positioned(
              //   right: 10,
              //   bottom: 10,
              //   child: IconButton(
              //     onPressed: controller.pickImage,
              //     icon: const Icon(IconlyLight.editSquare),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
   // child: AccountImage(
                  //   image: controller.userImageUrl.value,
                  //   radius: radius ?? defaultRadius,
                  // ),
                  // child: FutureBuilder(
                  //   future: DataService.loadImageFromNetwork(controller.userImageUrl.value),
                  //   builder: (context, snapshot) {
                  //     if (snapshot.hasData) {
                  //       Uint8List a = base64Decode(snapshot.data.toString());
                  //       // return Image(image: MemoryImage(a, scale: 1));
                  //       // return Text('image');
                  //     } else if (snapshot.hasError) {
                  //       return Text(snapshot.error.toString());
                  //     } else {
                  //       return const CircularProgressIndicator();
                  //     }
                  //   },
                  // ),