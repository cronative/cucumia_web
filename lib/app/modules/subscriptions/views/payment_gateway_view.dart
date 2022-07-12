import 'package:cucumia_admin/app/modules/profile/views/widgets/textfield_card.dart';
import 'package:cucumia_admin/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../data/demo_data.dart';
import '../../../widgets/components/common_card.dart';
import '../controllers/subscriptions_controller.dart';

class PaymentGatewayView extends GetResponsiveView<SubscriptionsController> {
  SubscriptionsController addCountrypartnerController =
      Get.put(SubscriptionsController());
  final TextEditingController _textEditingController = TextEditingController();

  PaymentGatewayView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    screen.context = context;
    _textEditingController.text = controller.noOfSubscriptions.value.toString();
    return FlutterDashboardListView(
      slivers: [
        SliverPadding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
              bottom: 20,
            ),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [
                  const Center(
                    child: Text(
                      // "No. of Shop Subscriptions",
                      'Payment gateway ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Center(
                    child: Text(
                      // "No. of Shop Subscriptions",
                      'You want to create ${controller.noOfSubscriptions}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        height: 50,
                        minWidth: 120,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        color: Theme.of(context).primaryColor,
                        child: Text(
                          'Cancel'.tr,
                          textScaleFactor: Get.textScaleFactor,
                          style: DefaultTextStyle.of(screen.context)
                              .style
                              .copyWith(
                                color: AppColors.white,
                                fontSize: 14,
                              ),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          controller.createNewSubcription();
                        },
                        height: 50,
                        minWidth: 120,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        color: Theme.of(context).primaryColor,
                        child: Text(
                          'Sure'.tr,
                          textScaleFactor: Get.textScaleFactor,
                          style: DefaultTextStyle.of(screen.context)
                              .style
                              .copyWith(
                                color: AppColors.white,
                                fontSize: 14,
                              ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ],
    );
  }
}

class PlanCard extends GetResponsiveView<SubscriptionsController> {
  final Plan plan;
  PlanCard({
    Key? key,
    required this.plan,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    screen.context = context;
    return CommonCard(
      height: 310,
      width: 280,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                top: 12,
              ),
              child: Obx(
                () => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      plan.title,
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RichText(
                      textScaleFactor: Get.textScaleFactor,
                      textAlign: TextAlign.left,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "\$" +
                                (controller.buyYearlyShopSubcription.isFalse
                                    ? "${plan.monthlyPrice}"
                                    : "${plan.yearlyPrice}"),
                            style: DefaultTextStyle.of(context).style.copyWith(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 24,
                                ),
                          ),
                          TextSpan(
                            text: "/" +
                                (controller.buyYearlyShopSubcription.isFalse
                                    ? "month"
                                    : "year"),
                            style: DefaultTextStyle.of(context).style.copyWith(
                                  color: Theme.of(context).primaryColor,
                                ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "• ",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          plan.point1,
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        plan.point2 == ''
                            ? const Text('')
                            : const Text(
                                "• ",
                                style: TextStyle(fontSize: 16),
                              ),
                        Text(
                          plan.point2 ?? plan.point1,
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.transparent,
              height: 30,
            ),
            MaterialButton(
              onPressed: () {
                Get.dialog(AlertDialog(
                    content: Container(
                  width: 433,
                  height: 419,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Expanded(
                                child: Text(
                                  'Selected Plan',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  plan.title,
                                  style: const TextStyle(
                                      color: const Color(0xff8675FF),
                                      fontSize: 24),
                                ),
                              )
                            ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Expanded(
                                child: Text(
                                  'Key feature',
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                  child: Text(
                                      '${plan.point1} \n10 Magazine* \n${plan.point2 ?? plan.point1}'))
                            ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Row(
                          children: [
                            const Expanded(
                                child: const Text('Shop Subscription')),
                            const SizedBox(width: 10),
                            const Expanded(child: const Text('150*'))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Row(
                          children: [
                            const Expanded(child: const Text('Price')),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "\$" +
                                        (controller.buyYearlyShopSubcription
                                                .isFalse
                                            ? "${plan.monthlyPrice}"
                                            : "${plan.yearlyPrice}"),
                                    style: const TextStyle(
                                        fontSize: 32, color: Colors.red),
                                  ),
                                  const SizedBox(width: 10),
                                  const Text(
                                    '\$890*',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.green),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )));
              },
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Theme.of(screen.context).primaryColor,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              height: 46,
              minWidth: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Subscribe",
                    textScaleFactor: Get.textScaleFactor,
                    style: DefaultTextStyle.of(screen.context).style.copyWith(
                          fontSize: Theme.of(screen.context)
                              .textTheme
                              .button
                              ?.fontSize,
                          color: Theme.of(context).primaryColor,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
