import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:cucumia_admin/app/widgets/components/animated_submit_button.dart';
import 'package:cucumia_admin/app/widgets/components/form_input_field.dart';
import 'package:cucumia_admin/app/widgets/components/labled_textfield.dart';
import 'package:cucumia_admin/models/ModelProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';
import '../../../widgets/components/reactive_datetime_picker.dart';
import '../matser_list/controllers/matser_list_controller.dart';

class ProductEditor extends GetResponsiveView<MatserListController> {
  Product ProductDetails;
  ProductEditor({required this.ProductDetails, Key? key}) : super(key: key);
  MatserListController productController = Get.put(MatserListController());
  @override
  Widget build(BuildContext context) {
    screen.context = context;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  ProductDetails.img_token!,
                ),
                radius: 35,
              ),
              const SizedBox(width: 20),
              const Text(
                'Editing Product',
                style: TextStyle(color: Colors.green, fontSize: 32, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 10,
                  bottom: 10,
                ),
                child: ReactiveFormBuilder(
                  form: () => productController.productEditForm,
                  builder: (context, form, child) {
                    return buildFormFields(form, context);
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AnimatedSubmitButton(
                    width: 90,
                    buttonText: 'Cancel',
                    onPressed: () {
                      Get.back();
                    }),
                AnimatedSubmitButton(
                    width: 90,
                    buttonText: 'Edit',
                    onPressed: () async {
                      await productController.editProduct(
                        productId: ProductDetails.id,
                        product_name: ProductDetails.name ?? "",
                        price: ProductDetails.price ?? 0,
                        discount: ProductDetails.discount ?? 0,
                        available_from: ProductDetails.available_from ?? TemporalDateTime(DateTime.now()),
                        expires_on: ProductDetails.expires_on ?? TemporalDateTime(DateTime.now()),
                      );
                      Get.snackbar(
                        "Product Edited",
                        "Updated on backend",
                      );
                      Get.back();
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildFormFields(FormGroup _form, BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                    LabeledTextField(
                      label: "Product Name",
                      isRequired: true,
                      textfield: FormTextInputField<String>(
                        controlName: "product_name",
                        hintText: "${ProductDetails.name} ",
                        onEditingComplete: () => _form.focus("product_price"),
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.text,
                        validationMessage: (control) => {
                          ValidationMessage.required: "Product Name can't be empty.",
                        },
                      ),
                    ),
                    LabeledTextField(
                      label: "Product's Price",
                      isRequired: true,
                      textfield: FormTextInputField<String>(
                        controlName: "product_price",
                        hintText: "${ProductDetails.currency_type} ${ProductDetails.price} ",
                        onEditingComplete: () => _form.focus("discount"),
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.text,
                        validationMessage: (control) => {
                          ValidationMessage.required: "Product Price can't be empty.",
                        },
                      ),
                    ),
                    LabeledTextField(
                      label: "Offer Price",
                      isRequired: true,
                      textfield: FormTextInputField<String>(
                        controlName: "offer_price",
                        hintText: "${ProductDetails.currency_type} ${ProductDetails.discount} ",
                        onEditingComplete: () => _form.focus("expiry_date"),
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.text,
                        validationMessage: (control) => {
                          ValidationMessage.required: "Product Price can't be empty.",
                        },
                      ),
                    ),
                    Visibility(
                      visible: ProductDetails.deal_type == ProductDealType.HOTDEALS,
                      child: LabeledTextField(
                        label: "Starting Details",
                        isRequired: true,
                        textfield: ReactiveDatePickerField<DateTime>(
                          controlName: "start_date",
                          hintText: " ${ProductDetails.available_from.toString().substring(0, 10)} ",
                          onEditingComplete: () => _form.focus("visibility_date"),
                        ),
                      ),
                    ),
                    LabeledTextField(
                      label: "Fresh untill",
                      isRequired: true,
                      textfield: ReactiveDatePickerField<DateTime>(
                        controlName: "expiry_date",
                        hintText: " ${ProductDetails.expires_on.toString().substring(0, 10)} ",
                        onEditingComplete: () => _form.focus("visibility_date"),
                      ),
                    ),
                    LabeledTextField(
                      label: "Visibilty Date",
                      isRequired: true,
                      textfield: ReactiveDatePickerField<DateTime>(
                        controlName: "visibility_date",
                        hintText: ProductDetails.available_from.toString().substring(0, 10),
                        onEditingComplete: () => _form.unfocus(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
