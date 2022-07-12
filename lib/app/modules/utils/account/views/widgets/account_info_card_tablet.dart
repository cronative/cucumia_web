import 'package:cucumia_admin/app/modules/utils/account/controllers/account_controller.dart';
import 'package:cucumia_admin/app/widgets/components/animated_submit_button.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'account_image.dart';

class AccountInfoTablet extends GetWidget<AccountController> {
  double? radius;
  double defaultRadius = Get.height * 0.15;
  String? platform;
  AccountInfoTablet({Key? key, this.radius}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: (radius ?? defaultRadius) / 3 * 2),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: radius ?? defaultRadius),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            Text(
                              "20",
                              // "${controller.user.value.merchants}",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
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
                              "20",
                              // "${controller.user.value.countryPartners}",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Country Partners",
                              softWrap: true,
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              "30",
                              // "${controller.user.value.affiliates}",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
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
                      decoration: BoxDecoration(
                          color: Color(0xFF6C757D).withOpacity(0.3),
                          borderRadius: BorderRadius.circular(4)),
                      padding: const EdgeInsets.all(4),
                      child: Text(EnumToString.convertToString(
                          controller.userService.user.value!.user_type)),
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
          Align(
            alignment: Alignment.topCenter,
            // child: AccountImage(
            //   image: controller.user.value.image_url ?? '',
            //   radius: radius ?? defaultRadius,
            // ),
            child: _buildAccountPic(),
          ),
        ],
      ),
    );
  }

  Widget _buildAccountPic() {
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
