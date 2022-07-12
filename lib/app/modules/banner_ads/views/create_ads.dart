import 'package:cucumia_admin/app/modules/banner_ads/controllers/banner_ads_controller.dart';
import 'package:cucumia_admin/app/modules/banner_ads/views/components/upload_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../../../themes/app_theme.dart';
import '../../../widgets/components/animated_submit_button.dart';

import '../../../widgets/components/form_input_field.dart';
import '../../../widgets/components/labled_textfield.dart';
import '../../../widgets/components/reactive_datetime_picker.dart';
import '../../../widgets/padding_wrapper.dart';

class CreateAdView extends GetResponsiveView<BannerAdsController> {
  @override
  Widget build(BuildContext context) {
    screen.context = context;
    return PaddingWrapper(
      isSliverItem: true,
      topPadding: 30,
      horizontalPadding: screen.isDesktop ? 30 : 20,
      child: SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton.icon(
                style: TextButton.styleFrom(
                    primary: Theme.of(context).primaryColor),
                onPressed: () {
                  controller.isCreatingBanner(false);
                },
                icon: const Icon(IconlyLight.arrowLeft2),
                label: const Text("Back")),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Post new ads",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
                letterSpacing: 0.4,
              ),
              textAlign: TextAlign.left,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 10,
                bottom: 10,
              ),
              child: ReactiveFormBuilder(
                form: () => controller.bannerForm,
                builder:
                    (BuildContext context, FormGroup _form, Widget? child) {
                  return _buildFormFields(_form);
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFormFields(FormGroup _form) {
    if (screen.isPhone) {
      return Padding(
        padding: const EdgeInsets.only(right: 5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // LabeledTextField(
            //   label: "Start Date",
            //   isRequired: true,
            //   textfield: ReactiveDatePickerField<DateTime>(
            //     controlName: "start_date",
            //     hintText: "DD/MM/YY",
            //     onEditingComplete: () => _form.focus('end_date'),
            //     validationMessage: (control) => {
            //       ValidationMessage.required: "Start Date can't be empty",
            //     },
            //   ),
            // ),
            // const SizedBox(
            //   height: 10,
            // ),
            LabeledTextField(
              label: "Expiry Date",
              isRequired: true,
              textfield: ReactiveDatePickerField<DateTime>(
                controlName: "expiry_date",
                hintText: "DD/MM/YY",
                onEditingComplete: () => _form.focus("banner_name"),
                // validationMessage: (control) => {
                //   ValidationMessage.required: "End Date can't be empty",
                // },
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            LabeledTextField(
              label: "Banner Name",
              isRequired: true,
              textfield: FormTextInputField<String>(
                controlName: "banner_name",
                hintText: "Banner Title",
                onEditingComplete: () => _form.unfocus(),
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.text,
                validationMessage: (control) => {
                  ValidationMessage.required:
                      "Magazine's Title can't be empty.",
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            AnimatedContainer(
              // width: 580,
              // height: screen.isPhone ? 350 : 200,
              duration: kThemeAnimationDuration,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: _buildImageCard(
                    controller.BannerImageUrl, controller.isPicUploading),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FormTextInputField<String>(
              controlName: "banner_link",
              hintText: "Banner Link",
              onEditingComplete: () => _form.unfocus(),
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.text,
              validationMessage: (control) => {
                ValidationMessage.required: "Magazine's link can't be empty",
              },
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 150,
              child: Center(
                child: AnimatedSubmitButton(
                  onPressed: () async {
                    await Future.delayed(2.seconds);
                    controller.createBanner();
                  },
                  textColor: AppColors.white,
                  radius: 8.0,
                  color: AppColors.green,
                  width: double.maxFinite,
                  buttonText: 'Publish',
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // Flexible(
              //   child: SizedBox(
              //     width: 180,
              //     child: LabeledTextField(
              //       label: "Start Date",
              //       isRequired: true,
              //       textfield: ReactiveDatePickerField<DateTime>(
              //         controlName: "start_date",
              //         hintText: "DD/MM/YY",
              //         onEditingComplete: () => _form.focus('end_date'),
              //         validationMessage: (control) => {
              //           ValidationMessage.required: "Start Date can't be empty",
              //         },
              //       ),
              //     ),
              //   ),
              // ),
              // const SizedBox(
              //   width: 25,
              // ),
              Flexible(
                child: SizedBox(
                  width: 180,
                  child: LabeledTextField(
                    label: "Expiry Date",
                    isRequired: true,
                    textfield: ReactiveDatePickerField<DateTime>(
                      controlName: "expiry_date",
                      hintText: "DD/MM/YY",
                      onEditingComplete: () => _form.unfocus(),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SizedBox(
                  width: 180,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Add Banner Name',
                        style: TextStyle(fontSize: 13),
                      ),
                      FormTextInputField<String>(
                        controlName: "banner_name",
                        hintText: "Banner Title",
                        onEditingComplete: () => _form.unfocus(),
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.text,
                        validationMessage: (control) => {
                          ValidationMessage.required:
                              "Banner's Title can't be empty",
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          AnimatedContainer(
            // width: 580,
            // height: screen.isPhone ? 350 : 200,
            duration: kThemeAnimationDuration,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: _buildImageCard(
                  controller.BannerImageUrl, controller.isPicUploading),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SizedBox(
                  width: 180,
                  child: FormTextInputField<String>(
                    controlName: "banner_link",
                    hintText: "Banner Link",
                    onEditingComplete: () => _form.unfocus(),
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.text,
                    validationMessage: (control) => {
                      ValidationMessage.required:
                          "Banner's link can't be empty.",
                    },
                  ),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              SizedBox(
                width: 150,
                child: Center(
                  child: AnimatedSubmitButton(
                    onPressed: () async {
                      await Future.delayed(2.seconds);
                      // print(controller.onlineMagAddForm.value["expiry_date"]);
                      controller.createBanner();
                    },
                    textColor: AppColors.white,
                    radius: 8.0,
                    color: AppColors.green,
                    width: double.maxFinite,
                    buttonText: 'Publish',
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    }
  }

  Widget _buildImageCard(RxString imageUrl, RxBool loading) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Material(
          // decoration: BoxDecoration(),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: const BorderSide(
              color: Color.fromARGB(255, 12, 2, 54),
              width: 2,
            ),
          ),
          clipBehavior: Clip.hardEdge,
          color: Theme.of(screen.context).scaffoldBackgroundColor,
          child: InkWell(
            onTap: () {
              imageUrl.value = '';
              controller.pickImage(imageUrl, loading);
            },
            child: uploadPic(20, imageUrl, loading),
          ),
        ),
      ],
    );
  }
}
