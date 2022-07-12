import 'package:cucumia_admin/app/modules/magazine/controllers/magazine_controller.dart';
import 'package:cucumia_admin/app/widgets/components/form_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../data/demo_data.dart';
import '../../../widgets/components/common_card.dart';
import '../../../widgets/components/labled_textfield.dart';

class BuyMagazineSubcriptionView extends GetResponsiveView<MagazineController> {
  FormGroup form;
  BuyMagazineSubcriptionView(this.form, {Key? key}) : super(key: key);
  MagazineController addCountrypartnerController = Get.put(MagazineController());
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
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [
                  Flex(
                    direction: screen.isPhone ? Axis.vertical : Axis.horizontal,
                    children: [
                      const Center(
                        child: Text(
                          "No. of Magazine Subscriptions",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      // ReactiveFormBuilder(
                      //     form: () => controller.onlineMagAddForm,
                      //     builder: (BuildContext context, FormGroup _form,
                      //         Widget? child) {
                      //       return Padding(
                      //         padding: const EdgeInsets.only(right: 5.0),
                      //         child: Column(
                      //           mainAxisAlignment: MainAxisAlignment.center,
                      //           crossAxisAlignment: CrossAxisAlignment.start,
                      //           mainAxisSize: MainAxisSize.min,
                      //           children: [
                      //             LabeledTextField(
                      //               label: "SKU  ",
                      //               isRequired: true,
                      //               textfield: FormTextInputField<String>(
                      //                 controlName: "noOfSubscriptions",
                      //                 hintText: "100",
                      //                 onEditingComplete: () => form.unfocus(),
                      //                 textInputAction: TextInputAction.next,
                      //                 keyboardType: TextInputType.text,
                      //               ),
                      //             ),
                      //           ],
                      //         ),
                      //       );
                      //     }),
                      Container(
                          width: 100,
                          decoration: BoxDecoration(border: Border.all(color: const Color(0xFF82868B)), borderRadius: BorderRadius.circular(4)),
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          child: const Center(
                            child: Text(
                              '100',
                              style: TextStyle(color: Color(0xFF82868B), fontWeight: FontWeight.bold),
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Flex(
                    direction: screen.isPhone ? Axis.vertical : Axis.horizontal,
                    children: [
                      const Text(
                        "Choose your Plan",
                        maxLines: 2,
                        style: TextStyle(fontSize: 20),
                      ),
                      screen.isPhone ? Container() : const Spacer(),
                      SizedBox(
                        height: 30,
                        child: ToggleSwitch(
                          minWidth: 90.0,
                          cornerRadius: 20.0,
                          borderWidth: 3,
                          borderColor: const [Colors.green],
                          activeBgColor: const [
                            Colors.white,
                          ],
                          activeFgColor: Colors.green,
                          inactiveBgColor: Colors.green,
                          inactiveFgColor: Colors.white,
                          initialLabelIndex: 0,
                          totalSwitches: 2,
                          labels: const ['Monthly', 'Yearly'],
                          radiusStyle: true,
                          onToggle: (index) {
                            controller.buyYearlyMagazineSubcription(index == 1);
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // screen.isDesktop
                  //     ? Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //         children: [
                  //           PlanCard(
                  //             plan: controller.allPlans[0],
                  //           ),
                  //           PlanCard(
                  //             plan: controller.allPlans[1],
                  //           ),
                  //           PlanCard(
                  //             plan: controller.allPlans[2],
                  //           ),
                  //         ],
                  //       )
                  //     : Column(
                  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //         children: [
                  //           PlanCard(
                  //             plan: controller.allPlans[0],
                  //           ),
                  //           PlanCard(
                  //             plan: controller.allPlans[1],
                  //           ),
                  //           PlanCard(
                  //             plan: controller.allPlans[2],
                  //           ),
                  //         ],
                  //       )
                ],
              ),
            )),
      ],
    );
  }
}

class PlanCard extends GetResponsiveView<MagazineController> {
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
                            text: "\$" + (controller.buyYearlyMagazineSubcription.isFalse ? "${plan.monthlyPrice}" : "${plan.yearlyPrice}"),
                            style: DefaultTextStyle.of(context).style.copyWith(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 24,
                                ),
                          ),
                          TextSpan(
                            text: "/" + (controller.buyYearlyMagazineSubcription.isFalse ? "month" : "year"),
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
                        plan.point2 == ""
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
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
                              style: const TextStyle(color: const Color(0xff8675FF), fontSize: 24),
                            ),
                          )
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                          const Expanded(
                            child: Text(
                              'Key feature',
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(child: Text('${plan.point1} \n10 Magazine* \n${plan.point2 ?? plan.point1}'))
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Row(
                          children: [
                            const Expanded(child: const Text('Shop Subscription')),
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
                                    "\$" + (controller.buyYearlyMagazineSubcription.isFalse ? "${plan.monthlyPrice}" : "${plan.yearlyPrice}"),
                                    style: const TextStyle(fontSize: 32, color: Colors.red),
                                  ),
                                  const SizedBox(width: 10),
                                  const Text(
                                    '\$890*',
                                    style: TextStyle(fontSize: 16, color: Colors.green),
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
                          fontSize: Theme.of(screen.context).textTheme.button?.fontSize,
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
