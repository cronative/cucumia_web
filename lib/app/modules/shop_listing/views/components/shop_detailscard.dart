import 'package:cucumia_admin/app/modules/shop_listing/controllers/shop_listing_controller.dart';
import 'package:cucumia_admin/models/ModelProvider.dart';
import 'package:cucumia_admin/models/Shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';

class ShopDetailsCard extends GetResponsiveView<ShopListingController> {
  final Rx<Shop> shopItem;

  ShopDetailsCard(this.shopItem);
  @override
  Widget build(BuildContext context) {
    Get.log(controller.index.toString());
    return Obx(() => Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: context.isPhone ? CrossAxisAlignment.center : CrossAxisAlignment.start,
            children: [
              Text(shopItem.value.name!,
                  textScaleFactor: Get.textScaleFactor,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 36, fontWeight: FontWeight.w600)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Managed By ',
                    style: const TextStyle(fontSize: 11),
                  ),
                  Text(
                    controller.allShops1[controller.index].values.first!.fullname!,
                    style: const TextStyle(fontSize: 11, color: Colors.red),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Contact:  ',
                    style: const TextStyle(fontSize: 11),
                  ),
                  Text(
                    shopItem.value.phn_number!,
                    style: const TextStyle(fontSize: 11, color: Colors.red),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Email:  ',
                    style: const TextStyle(fontSize: 11),
                  ),
                  Text(
                    controller.allShops1[controller.index].values.first!.email!,
                    style: const TextStyle(fontSize: 11, color: Colors.red),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Icon(
                        IconlyBold.star,
                        color: Color(0xFFFF9F43),
                        size: 14,
                      ),
                      Icon(
                        IconlyBold.star,
                        color: Color(0xFFFF9F43),
                        size: 14,
                      ),
                      Icon(
                        IconlyBold.star,
                        color: Color(0xFFFF9F43),
                        size: 14,
                      ),
                      Icon(
                        IconlyBold.star,
                        color: Color(0xFFFF9F43),
                        size: 14,
                      ),
                      Icon(
                        IconlyLight.star,
                        // color: Colors.black,
                        size: 14,
                      ),
                    ],
                  ),
                  Text(
                    shopItem.value.rating.toString(),
                    textScaleFactor: Get.textScaleFactor,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Text(
                shopItem.value.phy_address!,
                textScaleFactor: Get.textScaleFactor,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ));
  }
}
