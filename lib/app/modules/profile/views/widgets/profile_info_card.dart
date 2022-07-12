import 'package:cucumia_admin/app/modules/profile/views/widgets/profile_image.dart';
import 'package:cucumia_admin/app/widgets/components/animated_submit_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/profile_controller.dart';

class ProfileInfo extends GetWidget<ProfileController> {
  double? radius;
  double defaultRadius = Get.height * 0.15;
  ProfileInfo({Key? key, this.radius}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Padding(
            padding: EdgeInsets.only(top: (radius ?? defaultRadius) / 3 * 2),
            child: Card(
              child: Container(
                  child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 100,
                        child: AnimatedSubmitButton(
                          onPressed: controller.connect,
                          buttonText: "Connect",
                          radius: 6,
                          color: const Color(0xffeA5455),
                        ),
                      ),
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
                              // "${controller.user.value.countryPartners}",
                              "20",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
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
                      "${controller.user?.fullname}",
                      style: const TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: Get.height * 0.015,
                    ),
                    Text(
                        // "${controller.user.value.city}, ${controller.user.value.country}"),
                        "${controller.user!.saved_location}, ${controller.user!.saved_location}"),
                    SizedBox(
                      height: Get.height * 0.025,
                    ),
                    Text("${controller.user?.user_type}"),
                    SizedBox(
                      height: Get.height * 0.015,
                    ),
                    Text(
                      "${controller.user?.user_type}",
                      style: const TextStyle(fontSize: 16),
                    ),
                    Divider(
                      height: Get.height * 0.1,
                    ),
                    SizedBox(
                      height: Get.height * 0.1,
                    )
                  ],
                ),
              )),
            ),
          ),
          ProfileImage(
            image: controller.user?.img_token ?? '',
            radius: radius ?? defaultRadius,
          ),
        ],
      ),
    );
  }
}
