import 'package:cucumia_admin/app/modules/profile/views/widgets/textfield_card.dart';
import 'package:cucumia_admin/app/widgets/components/animated_submit_button.dart';
import 'package:cucumia_admin/app/widgets/components/form_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';
import '../../controllers/profile_controller.dart';

class ProfilePasswordForm extends GetResponsiveView<ProfileController> {
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
            SizedBox(
              width: 170,
              child: AnimatedSubmitButton(
                onPressed: () {},
                buttonText: "Change Password",
                radius: 6,
                color: Color(0xff5e72e4),
              ),
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
              Container(
                height: screen.isDesktop
                    ? 85
                    : screen.context.isLargeTablet
                        ? 150
                        : screen.context.isSmallTablet
                            ? 250
                            : 350,
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
                                height: 100,
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
                                    height: 100,
                                    child: fieldList[0],
                                  ),
                                  SizedBox(
                                    height: 100,
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
                                  fieldList[3],
                                ],
                              )
                            : Column(
                                children: [
                                  SizedBox(
                                    height: 100,
                                    child: fieldList[0],
                                  ),
                                  SizedBox(
                                    height: 100,
                                    child: fieldList[1],
                                  ),
                                  SizedBox(
                                    height: 100,
                                    child: fieldList[2],
                                  ),
                                  fieldList[3],
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
