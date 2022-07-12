import 'package:cucumia_admin/app/modules/magazine/controllers/magazine_controller.dart';
import 'package:cucumia_admin/app/modules/magazine/views/components/upload_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../../themes/app_theme.dart';
import '../../../widgets/components/animated_submit_button.dart';
import '../../../widgets/components/common_card.dart';
import '../../../widgets/components/form_input_field.dart';
import '../../../widgets/components/labled_textfield.dart';
import '../../../widgets/components/reactive_datetime_picker.dart';
import '../../../widgets/padding_wrapper.dart';

class OfferMagFormView extends GetResponsiveView<MagazineController> {
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
            const Text(
              "Add New Magazine",
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
                form: () => controller.onlineMagAddForm,
                builder: (BuildContext context, FormGroup _form, Widget? child) {
                  return _buildFormFields(_form);
                },
              ),
            ),
            const Divider(
              color: Colors.transparent,
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                top: 20,
              ),
              child: Text(
                'Add Pages'.tr,
                textScaleFactor: Get.textScaleFactor,
                style: DefaultTextStyle.of(screen.context).style.copyWith(
                      fontSize: 18,
                    ),
              ),
            ),
            const Divider(
              color: Colors.transparent,
              height: 20,
            ),
            _buildProductImagesRow(),
            const Divider(
              color: Colors.transparent,
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                top: 20,
              ),
              child: Text(
                'Add Thumbnail'.tr,
                textScaleFactor: Get.textScaleFactor,
                style: DefaultTextStyle.of(screen.context).style.copyWith(
                      fontSize: 18,
                    ),
              ),
            ),
            const Divider(
              color: Colors.transparent,
              height: 20,
            ),
            AnimatedContainer(
              // width: 580,
              // height: screen.isPhone ? 350 : 200,
              duration: kThemeAnimationDuration,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: _buildImageCard(controller.userImageUrl3, controller.isPicUploading3),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 850,
              child: _buildButtons(),
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
            Padding(
              padding: const EdgeInsets.only(
                left: 5,
                bottom: 10,
              ),
              child: Text(
                'Magazine Details'.tr,
                textScaleFactor: Get.textScaleFactor,
                style: DefaultTextStyle.of(screen.context).style.copyWith(
                      fontSize: 18,
                    ),
              ),
            ),
            Expanded(
              child: SizedBox(
                width: 180,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Add Magazine Name',
                      style: TextStyle(fontSize: 13),
                    ),
                    FormTextInputField<String>(
                      controlName: "magazine_title",
                      hintText: "Magazine Title",
                      onEditingComplete: () => _form.unfocus(),
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.text,
                      validationMessage: (control) => {
                        ValidationMessage.required: "Magazine's Title can't be empty",
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            LabeledTextField(
              label: "Scheduled Date",
              isRequired: true,
              textfield: ReactiveDatePickerField<DateTime>(
                controlName: "start_date",
                hintText: "DD/MM/YY",
                onEditingComplete: () => _form.focus(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            LabeledTextField(
              label: "Expiry Date",
              isRequired: true,
              textfield: ReactiveDatePickerField<DateTime>(
                controlName: "expiry_date",
                hintText: "DD/MM/YY",
                onEditingComplete: () => _form.unfocus(),
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
          Padding(
            padding: const EdgeInsets.only(
              left: 5,
              bottom: 10,
            ),
            child: Text(
              'Magazine Details'.tr,
              textScaleFactor: Get.textScaleFactor,
              style: DefaultTextStyle.of(screen.context).style.copyWith(
                    fontSize: 18,
                  ),
            ),
          ),
          Row(
            children: [
              Flexible(
                child: SizedBox(
                  width: 180,
                  child: LabeledTextField(
                    label: "Magazine Title",
                    isRequired: true,
                    textfield: FormTextInputField<String>(
                      controlName: "magazine_title",
                      hintText: "Magazine Title",
                      onEditingComplete: () => _form.focus('start_date'),
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      validationMessage: (control) => {
                        ValidationMessage.required: "Magazine Title can't be empty.",
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                height: 25,
              ),
              Flexible(
                child: SizedBox(
                  width: 180,
                  child: LabeledTextField(
                    label: "Scheduled Date",
                    isRequired: true,
                    textfield: ReactiveDatePickerField<DateTime>(
                      controlName: "start_date",
                      hintText: "DD/MM/YY",
                      onEditingComplete: () => _form.focus("expiry_date"),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
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
          )
        ],
      );
    }
  }

  Widget _buildImageCard(RxString imageUrl, RxBool loading) {
    return Container(
      width: screen.isPhone
          ? Get.size.width * 0.5
          : screen.isTablet
              ? Get.size.width * 0.2
              : Get.size.width * 0.1,
      child: Material(
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
            controller.pickImage(imageUrl, loading);
          },
          child: uploadPic(20, imageUrl, loading),
        ),
      ),
    );
  }

  Widget _buildProductImagesRow() {
    return screen.isPhone
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildImageCard(controller.userImageUrl0, controller.isPicUploading0),
              const SizedBox(
                width: 30,
              ),
              _buildImageCard(controller.userImageUrl1, controller.isPicUploading1),
              const SizedBox(
                width: 30,
              ),
              _buildImageCard(controller.userImageUrl2, controller.isPicUploading2),
            ],
          )
        : Row(
            children: [
              _buildImageCard(controller.userImageUrl0, controller.isPicUploading0),
              const SizedBox(
                width: 30,
              ),
              _buildImageCard(controller.userImageUrl1, controller.isPicUploading1),
              const SizedBox(
                width: 30,
              ),
              _buildImageCard(controller.userImageUrl2, controller.isPicUploading2),
            ],
          );
  }

  Widget _buildButtons() {
    if (controller.showOfferMagazineUploadForm.isTrue) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MaterialButton(
            onPressed: () {
              controller.fetchData();
              controller.showOfferMagazineUploadForm(false);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: BorderSide(
                color: Theme.of(screen.context).primaryColor,
              ),
            ),
            height: 46,
            minWidth: 120,
            child: Text(
              'Cancel',
              textScaleFactor: Get.textScaleFactor,
              style: DefaultTextStyle.of(screen.context).style,
            ),
          ),
          SizedBox(
            width: 150,
            child: Center(
              child: AnimatedSubmitButton(
                onPressed: () async {
                  await Future.delayed(2.seconds);
                  // controller.fetchData();
                  controller.createOfferMagazine();
                },
                textColor: AppColors.white,
                radius: 8.0,
                color: AppColors.green,
                width: double.maxFinite,
                buttonText: 'Complete',
              ),
            ),
          ),
        ],
      );
    } else {
      if (screen.isPhone) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MaterialButton(
              onPressed: () {
                controller.showOfferMagazineUploadForm(false);
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side: BorderSide(
                  color: Theme.of(screen.context).primaryColor,
                ),
              ),
              height: 46,
              minWidth: 120,
              child: Text(
                'Cancel',
                textScaleFactor: Get.textScaleFactor,
                style: DefaultTextStyle.of(screen.context).style,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 150,
              child: Center(
                child: AnimatedSubmitButton(
                  onPressed: () async {
                    await Future.delayed(2.seconds);
                    controller.createOfferMagazine();
                  },
                  textColor: AppColors.white,
                  radius: 8.0,
                  color: AppColors.green,
                  width: double.maxFinite,
                  buttonText: 'Complete',
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 250,
              child: Center(
                child: AnimatedSubmitButton(
                  onPressed: () async {
                    await Future.delayed(2.seconds);
                  },
                  textColor: AppColors.white,
                  radius: 8.0,
                  color: AppColors.green,
                  width: double.maxFinite,
                  buttonText: 'Complete & Add to New product',
                ),
              ),
            ),
          ],
        );
      } else {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MaterialButton(
              onPressed: () {
                controller.showOfferMagazineUploadForm(false);
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side: BorderSide(
                  color: Theme.of(screen.context).primaryColor,
                ),
              ),
              height: 46,
              minWidth: 120,
              child: Text(
                'Cancel',
                textScaleFactor: Get.textScaleFactor,
                style: DefaultTextStyle.of(screen.context).style,
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 150,
                  child: Center(
                    child: AnimatedSubmitButton(
                      onPressed: () async {
                        await Future.delayed(2.seconds);
                        controller.createOfferMagazine();
                      },
                      textColor: AppColors.white,
                      radius: 8.0,
                      color: AppColors.green,
                      width: double.maxFinite,
                      buttonText: 'Complete',
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: 200,
                  child: Center(
                    child: AnimatedSubmitButton(
                      onPressed: () async {
                        await Future.delayed(2.seconds);
                      },
                      textColor: AppColors.white,
                      radius: 8.0,
                      color: AppColors.green,
                      width: double.maxFinite,
                      buttonText: 'Complete & Add to New product',
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      }
    }
  }
}
