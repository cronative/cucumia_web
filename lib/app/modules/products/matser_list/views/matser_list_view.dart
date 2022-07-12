import 'package:cucumia_admin/app/modules/products/components/products_header.dart';
import 'package:cucumia_admin/app/modules/products/matser_list/views/components/import_button.dart';
import 'package:cucumia_admin/app/modules/users/component/table_datasrc_productBundle.dart';
import 'package:cucumia_admin/app/widgets/components/build_card.dart';
import 'package:cucumia_admin/app/widgets/components/form_input_field.dart';
import 'package:cucumia_admin/app/widgets/components/reactive_datetime_picker.dart';
import 'package:cucumia_admin/app/widgets/utils/padding_wrapper.dart';
import 'package:cucumia_admin/app/widgets/utils/shimmer_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';
import 'package:number_pagination/number_pagination.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../../../../widgets/components/labled_textfield.dart';
import '../../components/master_card.dart';
import '../../products_listing/views/products_listing_view.dart';
import '../controllers/matser_list_controller.dart';
import 'components/build_buttons.dart';
import 'components/checkbox_row.dart';
import 'components/images_row.dart';

class MatserListView extends GetResponsiveView<MatserListController> {
  MatserListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    screen.context = context;

    return Obx(
      () => FlutterDashboardListView(
        shrinkWrap: true,
        scrollController: ScrollController(),
        slivers: [
          //Shimmer For loading Master Listing
          SliverVisibility(
            visible: controller.isLoading.value &&
                controller.allProducts.isEmpty &&
                !controller.CreatingNewProduct.value,
            sliver: PaddingWrapper(
              isSliverItem: true,
              topPadding: 5,
              horizontalPadding: screen.isDesktop ? 40 : 10,
              child: ShimmerHelper.buildGridShimmer(
                sliverItem: true,
                screen: screen,
                showIcon: true,
              ),
            ),
          ),
          //Header For Master List
          SliverVisibility(
            visible: !controller.isLoading.value &&
                controller.allProducts.isNotEmpty &&
                !controller.CreatingNewProduct.value,
            sliver: ProductsHeader(
              title: "Masterlist",
              subTitle: "Products Listed",
              totalCount: controller.allProducts.length,
              actions: const [
                // DropdownButtonHideUnderline(
                //   child: DropdownButton2(
                //     dropdownWidth: 120,
                //     customButton: DecoratedBox(
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(8.0),
                //         border: Border.all(
                //           color: Theme.of(screen.context).disabledColor,
                //         ),
                //       ),
                //       child: Padding(
                //         padding: const EdgeInsets.symmetric(
                //           horizontal: 10,
                //           vertical: 10,
                //         ),
                //         child: Row(
                //           children: [
                //             Text(
                //               '01/12/2020',
                //               textScaleFactor: Get.textScaleFactor,
                //               style: DefaultTextStyle.of(screen.context)
                //                   .style
                //                   .copyWith(
                //                     color:
                //                         Theme.of(screen.context).disabledColor,
                //                     fontSize: 14,
                //                   ),
                //             ),
                //             const SizedBox(
                //               width: 10,
                //             ),
                //             Icon(
                //               IconlyLight.arrow_down_2,
                //               size: 14,
                //               color: Theme.of(screen.context).disabledColor,
                //             ),
                //           ],
                //         ),
                //       ),
                //     ),
                //     items: <String>[
                //       '01/12/2020',
                //       '01/12/2021',
                //       '01/12/2022',
                //       '01/12/2023'
                //     ].map((String value) {
                //       return DropdownMenuItem<String>(
                //         value: value,
                //         child: Text(value),
                //       );
                //     }).toList(),
                //     onChanged: (String? value) {
                //       print(value);
                //     },
                //   ),
                // ),
                // const SizedBox(
                //   width: 10,
                // ),
                // MaterialButton(
                //   onPressed: () {
                //     controller.CreatingNewProduct.toggle();
                //   },
                //   height: 50,
                //   minWidth: 120,
                //   shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(8.0),
                //   ),
                //   color: Theme.of(context).primaryColor,
                //   child: Text(
                //     'Add new product'.tr,
                //     textScaleFactor: Get.textScaleFactor,
                //     style: DefaultTextStyle.of(screen.context).style.copyWith(
                //           color: AppColors.white,
                //           fontSize: 14,
                //         ),
                //   ),
                // ),
              ],
            ),
          ),
          //Grid View for Master List
          SliverVisibility(
              visible: !controller.isLoading.value &&
                  controller.allProducts.isNotEmpty &&
                  !controller.CreatingNewProduct.value,
              sliver: PaddingWrapper(
                isSliverItem: true,
                topPadding: 5,
                horizontalPadding: screen.isDesktop ? 40 : 10,
                child: FlutterDashboardListView.grid(
                  isSliverItem: true,
                  childCount: controller.allProducts.length,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  gridDelegate: !screen.isDesktop
                      ? screen.width <= 756
                          ? FlutterDashboardGridDelegates.columns_2(
                              width: screen.width,
                              length: 4,
                            )
                          : FlutterDashboardGridDelegates.columns_3(
                              width: screen.width,
                              length: 4,
                            )
                      : screen.width <= 1700
                          ? screen.width <= 1450
                              ? screen.width <= 1240
                                  ? FlutterDashboardGridDelegates.columns_2(
                                      width: screen.width,
                                      length: 4,
                                    )
                                  : FlutterDashboardGridDelegates.columns_3(
                                      width: screen.width,
                                      length: 4,
                                    )
                              : FlutterDashboardGridDelegates.columns_4(
                                  width: screen.width,
                                  length: 4,
                                )
                          : FlutterDashboardGridDelegates.columns_5(
                              width: screen.width,
                              length: 4,
                            ),
                  buildItem: (BuildContext context, int index) {
                    return Obx(() => MasterCard(
                          isMasterListItem: true,
                          productItem: controller.allProducts[index],
                        ));
                  },
                  listType: FlutterDashboardListType.Grid,
                ),
              )),

          //Pagination for Master List Grid View
          SliverVisibility(
            visible: !controller.isLoading.value &&
                controller.allProducts.isNotEmpty &&
                !controller.CreatingNewProduct.value,
            sliver: PaddingWrapper(
              isSliverItem: true,
              horizontalPadding: screen.isDesktop ? 50 : 20,
              topPadding: 20,
              bottomPadding: 10,
              child: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // Align(
                    //   alignment: Alignment.bottomRight,
                    //   child: SizedBox(
                    //     width: 450,
                    //     child: NumberPagination(
                    //       fontSize: 12,
                    //       threshold: 7,
                    //       onPageChanged: (int pageNumber) {
                    //         //do somthing for selected page

                    //         // controller.currentPage = pageNumber;
                    //         controller.updatepage(pageNumber);
                    //       },
                    //       pageTotal: 10,
                    //       pageInit: controller.currentPage, // picked number when init page
                    //       colorPrimary: Colors.black,
                    //       colorSub: Colors.white,
                    //       iconToFirst: const Icon(
                    //         Icons.first_page,
                    //         size: 15,
                    //       ),
                    //       iconPrevious: const Icon(
                    //         Icons.keyboard_arrow_left,
                    //         size: 15,
                    //       ),
                    //       iconNext: const Icon(
                    //         Icons.keyboard_arrow_right,
                    //         size: 15,
                    //       ),
                    //       iconToLast: const Icon(
                    //         Icons.last_page,
                    //         size: 15,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // Row(
                    //     crossAxisAlignment: CrossAxisAlignment.center,
                    //     mainAxisAlignment: MainAxisAlignment.end,
                    //     children: [
                    //       TextButton(
                    //         child: Text("Previous page"),
                    //         onPressed: (controller.currentPage - 1) < 0
                    //             ? null
                    //             : controller.previousPage,
                    //       ),
                    //       SizedBox(width: 10),
                    //       TextButton(
                    //         child: Text("Next page"),
                    //         onPressed: (controller.currentPage + 1) <
                    //                 controller.pageCount()
                    //             ? controller.nextPage
                    //             : null,
                    //       )
                    //     ],),
                  ],
                ),
              ),
            ),
          ),
          //Create New Product Page
          SliverVisibility(
            visible: !controller.isLoading.value &&
                controller.allProducts.isNotEmpty &&
                controller.CreatingNewProduct.value &&
                !controller.showProductUploadForm.value &&
                !controller.showBulkProductUploadForm.value,
            sliver: PaddingWrapper(
              isSliverItem: true,
              topPadding: screen.isDesktop ? 50 : 20,
              horizontalPadding: screen.isDesktop ? 60 : 20,
              child: FlutterDashboardListView.grid(
                isSliverItem: true,
                childCount: 2,
                mainAxisSpacing: screen.isPhone ? 20 : 50,
                crossAxisSpacing: screen.isPhone ? 20 : 50,
                gridDelegate: !screen.isPhone
                    ? FlutterDashboardGridDelegates.columns_2(
                        width: screen.width,
                        length: 2,
                      )
                    : FlutterDashboardGridDelegates.columns_1(
                        width: screen.width,
                        length: 2,
                      ),
                buildItem: (BuildContext context, int index) {
                  return _cardItems()[index];
                },
                listType: FlutterDashboardListType.Grid,
              ),
            ),
          ),
          //Single Product Form
          SliverVisibility(
            visible: !controller.isLoading.value &&
                controller.allProducts.isNotEmpty &&
                controller.CreatingNewProduct.value &&
                controller.showProductUploadForm.value,
            sliver: PaddingWrapper(
              isSliverItem: true,
              topPadding: 10,
              horizontalPadding: screen.isDesktop ? 30 : 20,
              child: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Add new Product",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        letterSpacing: 0.4,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    typeofdealsRow(),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 20,
                      ),
                      child: Text(
                        'Product Image'.tr,
                        textScaleFactor: Get.textScaleFactor,
                        style:
                            DefaultTextStyle.of(screen.context).style.copyWith(
                                  fontSize: 18,
                                ),
                      ),
                    ),
                    const Divider(
                      color: Colors.transparent,
                      height: 20,
                    ),
                    createProductImagesRow(),
                    const Divider(
                      color: Colors.transparent,
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 10,
                        bottom: 10,
                      ),
                      child: ReactiveFormBuilder(
                        form: () => controller.productAddForm,
                        builder: (BuildContext context, FormGroup _form,
                            Widget? child) {
                          return _buildFormFields(_form, context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              // SliverToBoxAdapter(
              //         child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           children: [
              //             const Text(
              //               "Add new Product",
              //               style: TextStyle(
              //                 fontWeight: FontWeight.w600,
              //                 fontSize: 24,
              //                 letterSpacing: 0.4,
              //               ),
              //               textAlign: TextAlign.left,
              //             ),
              //             typeofdealsRow(),
              //             Padding(
              //               padding: const EdgeInsets.only(
              //                 left: 10,
              //                 top: 20,
              //               ),
              //               child: Text(
              //                 'Product Image'.tr,
              //                 textScaleFactor: Get.textScaleFactor,
              //                 style:
              //                     DefaultTextStyle.of(screen.context).style.copyWith(
              //                           fontSize: 18,
              //                         ),
              //               ),
              //             ),
              //             const Divider(
              //               color: Colors.transparent,
              //               height: 20,
              //             ),
              //             buildProductImagesRow(),
              //             const Divider(
              //               color: Colors.transparent,
              //               height: 30,
              //             ),
              //             Padding(
              //               padding: const EdgeInsets.only(
              //                 top: 10,
              //                 left: 10,
              //                 bottom: 10,
              //               ),
              //               child: ReactiveFormBuilder(
              //                 form: () => controller.productAddForm,
              //                 builder: (BuildContext context, FormGroup _form,
              //                     Widget? child) {
              //                   return _buildFormFields(_form);
              //                 },
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
            ),
          ),
          //Bulk Product Upload From
          SliverVisibility(
            visible: !controller.isLoading.value &&
                controller.allProducts.isNotEmpty &&
                controller.CreatingNewProduct.value &&
                controller.showBulkProductUploadForm.value &&
                !controller.showBulkCSVList.value,
            sliver: PaddingWrapper(
              isSliverItem: true,
              topPadding: 10,
              horizontalPadding: screen.isDesktop ? 30 : 20,
              child: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Add new Product",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                            letterSpacing: 0.4,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        ImportButton2(),
                      ],
                    ),
                    typeofdealsRow(),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 20,
                      ),
                      child: Text(
                        'Product Image'.tr,
                        textScaleFactor: Get.textScaleFactor,
                        style:
                            DefaultTextStyle.of(screen.context).style.copyWith(
                                  fontSize: 18,
                                ),
                      ),
                    ),
                    const Divider(
                      color: Colors.transparent,
                      height: 20,
                    ),
                    createProductImagesRow(),
                    const Divider(
                      color: Colors.transparent,
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 10,
                        bottom: 10,
                      ),
                      child: ReactiveFormBuilder(
                        form: () => controller.productAddForm,
                        builder: (BuildContext context, FormGroup _form,
                            Widget? child) {
                          return _buildFormFields(_form, context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //CSV File Reader
          SliverVisibility(
            visible: !controller.isLoading.value &&
                controller.allProducts.isNotEmpty &&
                controller.CreatingNewProduct.value &&
                controller.showBulkProductUploadForm.value &&
                controller.showBulkCSVList.value,
            sliver: PaddingWrapper(
              isSliverItem: true,
              topPadding: 10,
              horizontalPadding: screen.isDesktop ? 30 : 20,
              child: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Bulk Upload List View",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        letterSpacing: 0.4,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    // Text('${controller.ListOfValues}'),
                    PaginatedDataTable(
                      showCheckboxColumn: false,
                      rowsPerPage: controller.rowsAsListOfValues.isEmpty
                          ? 1
                          : controller.rowsAsListOfValues.length < 10
                              ? controller.rowsAsListOfValues.length
                              : 10,
                      columns: const [
                        DataColumn(label: Text('Name')),
                        DataColumn(label: Text('Country')),
                        DataColumn(label: Text('contact')),
                        DataColumn(label: Text('Status')),
                        DataColumn(label: Text('ACTIONS')),
                      ],
                      columnSpacing: 20,
                      dataRowHeight: kMinInteractiveDimension + 20,
                      source: DSforBundle(controller.ListOfValues),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            controller.showBulkCSVList(false);
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
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _cardItems() {
    return [
      BuildCard(
        text: 'Add New Product',
        onPressed: () {
          controller.showProductUploadForm(true);
        },
      ),
      BuildCard(
        text: 'Create Bulk products',
        onPressed: () {
          controller.showBulkProductUploadForm(true);
        },
      ),
    ];
  }

  Widget _buildFormFields(FormGroup _form, BuildContext context) {
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
                'Product Details'.tr,
                textScaleFactor: Get.textScaleFactor,
                style: DefaultTextStyle.of(screen.context).style.copyWith(
                      fontSize: 18,
                    ),
              ),
            ),
            LabeledTextField(
              label: "SKU  ",
              isRequired: true,
              textfield: FormTextInputField<String>(
                controlName: "sku",
                hintText: "#28282828",
                onEditingComplete: () => _form.focus("actual_price"),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                validationMessage: (control) => {
                  ValidationMessage.required: "SKU can't be empty.",
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            LabeledTextField(
              label: "Name of Product",
              isRequired: true,
              textfield: FormTextInputField<String>(
                controlName: "productname",
                hintText: "Product Name",
                onEditingComplete: () => _form.focus("actual_price"),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                validationMessage: (control) => {
                  ValidationMessage.required: "Product Name can't be empty.",
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   mainAxisSize: MainAxisSize.min,
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.only(
            //         left: 5,
            //       ),
            //       child: RichText(
            //         textScaleFactor: Get.textScaleFactor,
            //         text: TextSpan(
            //           children: [
            //             TextSpan(
            //               text: "Category",
            //               style: DefaultTextStyle.of(context).style.copyWith(
            //                     color: DefaultTextStyle.of(context).style.color?.withOpacity(0.6),
            //                     fontSize: 16,
            //                   ),
            //             ),
            //             TextSpan(
            //               text: " *",
            //               style: DefaultTextStyle.of(context).style.copyWith(
            //                     color: Theme.of(context).errorColor,
            //                     fontSize: 16,
            //                   ),
            //             ),
            //           ],
            //         ),
            //       ), lon : 12.559728739718688 lat : 55.66740918030395

            //     ),
            //     const SizedBox(
            //       height: 10,
            //     ),
            //     DropdownButtonHideUnderline(
            //       child: DropdownButton2(
            //         dropdownWidth: 120,
            //         customButton: DecoratedBox(
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(8.0),
            //             border: Border.all(
            //               color: Theme.of(screen.context).disabledColor,
            //             ),
            //           ),
            //           child: Padding(
            //             padding: const EdgeInsets.symmetric(
            //               horizontal: 20,
            //               vertical: 10,
            //             ),
            //             child: Row(
            //               children: [
            //                 Icon(
            //                   IconlyLight.calendar,
            //                   size: 14,
            //                   color: Theme.of(screen.context).disabledColor,
            //                 ),
            //                 const SizedBox(
            //                   width: 10,
            //                 ),
            //                 Text(
            //                   controller.columnlist[0].toString(),
            //                   textScaleFactor: Get.textScaleFactor,
            //                   style: DefaultTextStyle.of(screen.context).style.copyWith(
            //                         color: Theme.of(screen.context).disabledColor,
            //                         fontSize: 14,
            //                       ),
            //                 ),
            //                 const SizedBox(
            //                   width: 10,
            //                 ),
            //                 Icon(
            //                   IconlyLight.arrow_down_2,
            //                   size: 14,
            //                   color: Theme.of(screen.context).disabledColor,
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //         items: controller.columnlist.map((ProductCategory value) {
            //           return DropdownMenuItem<ProductCategory>(
            //             value: value,
            //             child: Text(value.toString()),
            //           );
            //         }).toList(),
            //         onChanged: (ProductCategory? value) {
            //           controller.product_cat(value);
            //           print(value);
            //         },
            //       ),
            //     ),
            //   ],

            // ),
            // LabeledTextField(
            //   label: "Brand",
            //   isRequired: true,
            //   textfield: FormTextInputField<String>(
            //     controlName: "brand",
            //     hintText: "Brand",
            //     onEditingComplete: () => _form.focus("sku"),
            //     textInputAction: TextInputAction.next,
            //     keyboardType: TextInputType.text,
            //     validationMessage: (control) => {
            //       ValidationMessage.required: "Brand can't be empty.",
            //     },
            //   ),
            // ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 5,
                bottom: 10,
              ),
              child: Text(
                'Product Details'.tr,
                textScaleFactor: Get.textScaleFactor,
                style: DefaultTextStyle.of(screen.context).style.copyWith(
                      fontSize: 18,
                    ),
              ),
            ),
            LabeledTextField(
              label: "Original Price ",
              isRequired: true,
              textfield: FormTextInputField<String>(
                controlName: "actual_price",
                hintText: "\$ 300",
                onEditingComplete: () => _form.focus("offer_price"),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                validationMessage: (control) => {
                  ValidationMessage.required: "Actual Price can't be empty.",
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            LabeledTextField(
              label: "Offer percentage/Price",
              isRequired: true,
              textfield: FormTextInputField<String>(
                controlName: "offer_price",
                hintText: "Offer Price",
                onEditingComplete: () => _form.focus("category"),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                validationMessage: (control) => {
                  ValidationMessage.required: "Brand can't be empty.",
                },
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            LabeledTextField(
              label: "Best before",
              isRequired: true,
              textfield: ReactiveDatePickerField<DateTime>(
                controlName: "expiry_date",
                hintText: "DD/MM/YY",
                onEditingComplete: () => _form.unfocus(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  // fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: controller.ScheduleisChecked.value,
                  shape: const CircleBorder(),
                  onChanged: (bool? value) {
                    print(value);
                    controller.ScheduleisChecked.value = value!;
                  },
                ),
                const Text('Schedule Product ')
              ],
            ),
            SizedBox(
              height: 250,
              width: 250,
              child: SfDateRangePicker(
                minDate: startDate,
                maxDate: endDate,
                showActionButtons: false,
                showTodayButton: false,
                enablePastDates: true,
                view: DateRangePickerView.month,
                viewSpacing: 5,
                showNavigationArrow: true,
                todayHighlightColor: Theme.of(screen.context).primaryColor,
                selectionColor: Theme.of(screen.context).primaryColor,
                onSelectionChanged: (DateRangePickerSelectionChangedArgs args) {
                  print(args.value);
                },
              ),
            ),
            Row(
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  // fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: controller.ScheduleisChecked.value,
                  shape: const CircleBorder(),
                  onChanged: (bool? value) {
                    print(value);
                    controller.PublishedisChecked.value = value!;
                  },
                ),
                const Text('Publish Now')
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            buildButtons(),
            const SizedBox(
              height: 20,
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
              'Product Details'.tr,
              textScaleFactor: Get.textScaleFactor,
              style: DefaultTextStyle.of(screen.context).style.copyWith(
                    fontSize: 18,
                  ),
            ),
          ),
          Row(
            children: [],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Flexible(
                child: SizedBox(
                  width: 180,
                  child: LabeledTextField(
                    label: "SKU  ",
                    isRequired: true,
                    textfield: FormTextInputField<String>(
                      controlName: "sku",
                      hintText: "#28282828",
                      onEditingComplete: () => _form.focus("actual_price"),
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      validationMessage: (control) => {
                        ValidationMessage.required: "sku can't be empty.",
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                child: SizedBox(
                  width: 180,
                  child: LabeledTextField(
                    label: "Product Name",
                    isRequired: true,
                    textfield: FormTextInputField<String>(
                      controlName: "productname",
                      hintText: "Product Name",
                      onEditingComplete: () => _form.focus("brand"),
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      validationMessage: (control) => {
                        ValidationMessage.required:
                            "Product Name can't be empty.",
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   mainAxisSize: MainAxisSize.min,
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.only(
              //         left: 5,
              //       ),
              //       child: RichText(
              //         textScaleFactor: Get.textScaleFactor,
              //         text: TextSpan(
              //           children: [
              //             TextSpan(
              //               text: "Category",
              //               style: DefaultTextStyle.of(context).style.copyWith(
              //                     color: DefaultTextStyle.of(context).style.color?.withOpacity(0.6),
              //                     fontSize: 16,
              //                   ),
              //             ),
              //             TextSpan(
              //               text: " *",
              //               style: DefaultTextStyle.of(context).style.copyWith(
              //                     color: Theme.of(context).errorColor,
              //                     fontSize: 16,
              //                   ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ),
              //     const SizedBox(
              //       height: 10,
              //     ),
              //     DropdownButtonHideUnderline(
              //       child: DropdownButton2(
              //         dropdownWidth: 120,
              //         customButton: DecoratedBox(
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(8.0),
              //             border: Border.all(
              //               color: Theme.of(screen.context).disabledColor,
              //             ),
              //           ),
              //           child: Padding(
              //             padding: const EdgeInsets.symmetric(
              //               horizontal: 20,
              //               vertical: 10,
              //             ),
              //             child: Row(
              //               children: [
              //                 Icon(
              //                   IconlyLight.calendar,
              //                   size: 14,
              //                   color: Theme.of(screen.context).disabledColor,
              //                 ),
              //                 const SizedBox(
              //                   width: 10,
              //                 ),
              //                 Text(
              //                   controller.columnlist[0] as String,
              //                   textScaleFactor: Get.textScaleFactor,
              //                   style: DefaultTextStyle.of(screen.context).style.copyWith(
              //                         color: Theme.of(screen.context).disabledColor,
              //                         fontSize: 14,
              //                       ),
              //                 ),
              //                 const SizedBox(
              //                   width: 10,
              //                 ),
              //                 Icon(
              //                   IconlyLight.arrow_down_2,
              //                   size: 14,
              //                   color: Theme.of(screen.context).disabledColor,
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //         items: controller.columnlist.map((ProductCategory value) {
              //           return DropdownMenuItem<ProductCategory>(
              //             value: value,
              //             child: Text(value as String),
              //           );
              //         }).toList(),
              //         onChanged: (ProductCategory? value) {
              //           print(value);
              //         },
              //       ),
              //     ),

              //   ],
              // ),

              // Flexible(
              //   child: SizedBox(
              //     width: 180,
              //     child: LabeledTextField(
              //       label: "Brand",
              //       isRequired: true,
              //       textfield: FormTextInputField<String>(
              //         controlName: "brand",
              //         hintText: "Brand",
              //         onEditingComplete: () => _form.focus("sku"),
              //         textInputAction: TextInputAction.next,
              //         keyboardType: TextInputType.text,
              //         validationMessage: (control) => {
              //           ValidationMessage.required: "Brand can't be empty.",
              //         },
              //       ),
              //     ),
              //   ),
              // ),
              const SizedBox(
                width: 25,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 5,
              bottom: 10,
            ),
            child: Text(
              'Product Pricing'.tr,
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
                    label: "Original Price ",
                    isRequired: true,
                    textfield: FormTextInputField<String>(
                      controlName: "actual_price",
                      hintText: "\$ 300",
                      onEditingComplete: () => _form.focus("offer_price"),
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      validationMessage: (control) => {
                        ValidationMessage.required:
                            "Original Price can't be empty.",
                      },
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
                    label: "Offer Percentage/Price",
                    isRequired: true,
                    textfield: FormTextInputField<String>(
                      controlName: "offer_price",
                      hintText: "\$ 200",
                      onEditingComplete: () => _form.focus("offer_percentage"),
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      validationMessage: (control) => {
                        ValidationMessage.required:
                            "offer price can't be empty.",
                      },
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
                    label: "Best before",
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
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Checkbox(
                checkColor: Colors.white,
                // fillColor: MaterialStateProperty.resolveWith(getColor),
                value: controller.ScheduleisChecked.value,
                shape: const CircleBorder(),
                onChanged: (bool? value) {
                  print(value);
                  controller.ScheduleisChecked.value = value!;
                },
              ),
              const Text('Schedule Product ')
            ],
          ),
          // Flexible(
          //   child: SizedBox(
          //     width: 180,
          //     child: LabeledTextField(
          //       label: "Schedule Date",
          //       isRequired: true,
          //       textfield: ReactiveDatePickerField<DateTime>(
          //         controlName: "schedule_date",
          //         hintText: "DD/MM/YY",
          //         onEditingComplete: () => _form.unfocus(),
          //       ),
          //     ),
          //   ),
          // ),
          SizedBox(
            height: 250,
            width: 250,
            child: SfDateRangePicker(
              minDate: startDate,
              maxDate: endDate,
              showActionButtons: false,
              showTodayButton: false,
              enablePastDates: true,
              view: DateRangePickerView.month,
              viewSpacing: 5,
              showNavigationArrow: true,
              todayHighlightColor: Theme.of(screen.context).primaryColor,
              selectionColor: Theme.of(screen.context).primaryColor,
              onSelectionChanged: (DateRangePickerSelectionChangedArgs args) {
                print(args.value);
              },
            ),
          ),
          Row(
            children: [
              Checkbox(
                checkColor: Colors.white,
                // fillColor: MaterialStateProperty.resolveWith(getColor),
                value: controller.ScheduleisChecked.value,
                shape: const CircleBorder(),
                onChanged: (bool? value) {
                  print(value);
                  controller.PublishedisChecked.value = value!;
                },
              ),
              const Text('Publish Now')
            ],
          ),
          Row(
            children: [
              Checkbox(
                checkColor: Colors.white,
                // fillColor: MaterialStateProperty.resolveWith(getColor),
                value: controller.ScheduleisChecked.value,
                shape: const CircleBorder(),
                onChanged: (bool? value) {
                  print(value);
                  controller.Dealtype;
                },
              ),
              const Text('GreenDeals')
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 850,
            child: buildButtons(),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      );
    }
  }
}
