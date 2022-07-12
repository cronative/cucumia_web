import 'package:cucumia_admin/app/modules/profile/views/widgets/textfield_card.dart';
import 'package:cucumia_admin/app/widgets/components/animated_submit_button.dart';
import 'package:cucumia_admin/app/widgets/components/form_input_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';
import '../../controllers/profile_controller.dart';

class ProfileForm extends GetWidget<ProfileController> {
  ProfileForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReactiveFormBuilder(
        form: () => controller.editForm,
        builder: (BuildContext context, FormGroup _form, Widget? child) {
          return Obx(
            () => Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 100,
                      child: AnimatedSubmitButton(
                        onPressed: controller.updateUserProfile,
                        buttonText:
                            controller.isEditing.isTrue ? "Save" : "Done",
                        radius: 6,
                        color: Color(0xff5e72e4),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.05,
                ),
                Text(
                  "USER INFORMATION",
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
                Row(
                  children: [
                    Expanded(
                      flex: 55,
                      child: LabeledTextField(
                        label: 'Email Address',
                        textfield: FormTextInputField(
                          readOnly: controller.isEditing.isFalse,
                          controlName: 'email',
                          hintText: 'Email Address',
                          onEditingComplete: () => _form.focus('mobile_no'),
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          validationMessage: (control) => {
                            ValidationMessage.required:
                                'Email Address can not be empty',
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 45,
                      child: LabeledTextField(
                          label: 'Mobile Number',
                          textfield: FormTextInputField(
                            readOnly: controller.isEditing.isFalse,
                            controlName: 'mobile_no',
                            hintText: 'Mobile Number',
                            onEditingComplete: () =>
                                _form.focus('first_number'),
                            keyboardType: TextInputType.phone,
                            textInputAction: TextInputAction.next,
                            validationMessage: (control) => {
                              ValidationMessage.required:
                                  'Mobile Number can not be empty',
                            },
                          )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 55,
                      child: LabeledTextField(
                          label: 'First Name',
                          textfield: FormTextInputField(
                            readOnly: controller.isEditing.isFalse,
                            controlName: 'first_name',
                            hintText: 'First Name',
                            onEditingComplete: () => _form.focus('last_name'),
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                            validationMessage: (control) => {
                              ValidationMessage.required:
                                  'First Name can not be empty',
                            },
                          )),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        flex: 45,
                        child: LabeledTextField(
                          label: 'Last Name',
                          textfield: FormTextInputField(
                            readOnly: controller.isEditing.isFalse,
                            controlName: 'last_name',
                            hintText: 'Last Name',
                            onEditingComplete: () => _form.focus('address'),
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                            validationMessage: (control) => {
                              ValidationMessage.required:
                                  'Last Name can not be empty',
                            },
                          ),
                        )),
                  ],
                ),
                Divider(
                  height: Get.height * 0.05,
                ),
                Text(
                  "CONTACT INFORMATION",
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
                LabeledTextField(
                    label: 'Address',
                    textfield: FormTextInputField(
                      readOnly: controller.isEditing.isFalse,
                      controlName: 'address',
                      hintText: 'Address',
                      onEditingComplete: () => _form.focus('city'),
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      validationMessage: (control) => {
                        ValidationMessage.required: 'Address can not be empty',
                      },
                    )),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: LabeledTextField(
                          label: 'City',
                          textfield: FormTextInputField(
                            readOnly: controller.isEditing.isFalse,
                            controlName: 'city',
                            hintText: 'City',
                            onEditingComplete: () => _form.focus('country'),
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                            validationMessage: (control) => {
                              ValidationMessage.required:
                                  'City can not be empty',
                            },
                          ),
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 3,
                      child: LabeledTextField(
                        label: 'Country',
                        textfield: FormTextInputField(
                          readOnly: controller.isEditing.isFalse,
                          controlName: 'country',
                          hintText: 'Country',
                          onEditingComplete: () => _form.focus('postal_code'),
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          validationMessage: (control) => {
                            ValidationMessage.required:
                                'Country can not be empty',
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 3,
                      child: LabeledTextField(
                        label: 'Postal Code',
                        textfield: FormTextInputField(
                          readOnly: controller.isEditing.isFalse,
                          controlName: 'postal_code',
                          hintText: 'Postal Code',
                          onEditingComplete: () => _form.unfocus(),
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                          validationMessage: (control) => {
                            ValidationMessage.required:
                                'Postal Code can not be empty',
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: Get.height * 0.1,
                ),
              ],
            ),
          );
        });
  }
}
