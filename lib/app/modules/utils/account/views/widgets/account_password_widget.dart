import 'package:cucumia_admin/app/modules/utils/account/views/widgets/textfield_card.dart';
import 'package:cucumia_admin/app/modules/utils/account/controllers/account_controller.dart';
import 'package:cucumia_admin/app/widgets/components/animated_submit_button.dart';
import 'package:cucumia_admin/app/widgets/components/form_input_field.dart';
import 'package:cucumia_admin/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';

class AccountPasswordForm extends GetResponsiveView<AccountController> {
  @override
  Widget build(BuildContext context) {
    screen.context = context;
    return ReactiveFormBuilder(
        form: () => controller.passwordForm,
        builder: (BuildContext context, FormGroup _form, Widget? child) {
          var fieldList = [
            LabeledTextField(
              label: 'Current Password',
              textfield: FormTextInputField(
                controlName: 'current_password',
                hintText: 'Current Password',
                onEditingComplete: () => _form.unfocus(),
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.next,
                validationMessage: (control) => {
                  ValidationMessage.required: 'Last Name can not be empty',
                },
              ),
            ),
            LabeledTextField(
              label: 'Current Password',
              textfield: FormTextInputField(
                controlName: 'current_password',
                hintText: 'Current Password',
                onEditingComplete: () => _form.unfocus(),
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.next,
                validationMessage: (control) => {
                  ValidationMessage.required: 'Last Name can not be empty',
                },
              ),
            ),
            LabeledTextField(
              label: 'Current Password',
              textfield: FormTextInputField(
                controlName: 'current_password',
                hintText: 'Current Password',
                onEditingComplete: () => _form.unfocus(),
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.next,
                validationMessage: (control) => {
                  ValidationMessage.required: 'Last Name can not be empty',
                },
              ),
            ),
            AnimatedSubmitButton(
              width: 170,
              onPressed: () {},
              buttonText: "Change Password",
              radius: 6,
              textColor: Colors.white,
              color: AppColors.green,
            ),
          ];
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Change Password",
                textScaleFactor: Get.textScaleFactor,
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
              ),
              SizedBox(
                height: Get.height * 0.05,
              ),
              SizedBox(
                height: screen.isDesktop
                    ? 110
                    : screen.context.isLargeTablet
                        ? 160
                        : screen.context.isSmallTablet
                            ? 260
                            : 360,
                child: screen.isDesktop
                    ? SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(child: fieldList[0]),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(child: fieldList[1]),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(child: fieldList[2]),
                            const SizedBox(
                              width: 10,
                            ),
                            fieldList[3],
                          ],
                        ),
                      )
                    : screen.context.isLargeTablet
                        ? Column(
                            children: [
                              SizedBox(
                                height: 110,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Expanded(child: fieldList[0]),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(child: fieldList[1]),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(child: fieldList[2]),
                                  ],
                                ),
                              ),
                              fieldList[3],
                            ],
                          )
                        : screen.context.isSmallTablet
                            ? Column(
                                children: [
                                  SizedBox(
                                    height: 110,
                                    child: fieldList[0],
                                  ),
                                  SizedBox(
                                    height: 110,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Expanded(child: fieldList[1]),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(child: fieldList[2]),
                                      ],
                                    ),
                                  ),
                                  Expanded(child: fieldList[3]),
                                ],
                              )
                            : Column(
                                children: [
                                  SizedBox(
                                    height: 110,
                                    child: fieldList[0],
                                  ),
                                  SizedBox(
                                    height: 110,
                                    child: fieldList[1],
                                  ),
                                  SizedBox(
                                    height: 110,
                                    child: fieldList[2],
                                  ),
                                  Expanded(child: fieldList[3]),
                                ],
                              ),
              ),
              SizedBox(
                height: Get.height * 0.1,
              ),
            ],
          );
        });
  }
}
