import 'package:cucumia_admin/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetResponsiveView<LoginController> {
  LoginView({Key? key}) : super(key: key);

  FlutterDashboardMaterialApp get dashboard => FlutterDashboardMaterialApp.of(screen.context);

  @override
  Widget build(BuildContext context) {
    screen.context = context;
    return Scaffold(
      body: ReactiveFormBuilder(
        form: () => controller.emailLoginForm,
        builder: (BuildContext context, FormGroup _form, Widget? child) {
          return screen.isDesktop
              ? buildDesktopView(
                  form: _form,
                )
              : buildDefaultView(
                  context,
                  form: _form,
                );
        },
      ),
    );
  }

  Widget buildDesktopView({required FormGroup form}) {
    return SizedBox(
      width: double.maxFinite,
      height: screen.height,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screen.width * 0.02,
          vertical: screen.height * 0.05,
        ),
        child: Card(
          color: Theme.of(screen.context).scaffoldBackgroundColor,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screen.width >= 1600 ? screen.width * 0.06 : screen.width * 0.02,
                    // vertical: Get.height * 0.05,
                    vertical: 10,
                  ),
                  child: Material(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Get.isDarkMode ? Theme.of(screen.context).cardColor : const Color(0xffffffff).withOpacity(0.26),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 60.0,
                        ),
                        child: SizedBox(
                          height: double.maxFinite,
                          child: Center(
                            child: SizedBox(
                              width: screen.isDesktop ? screen.width * 0.4 : Get.width * 0.85,
                              child: CustomScrollView(
                                slivers: [
                                  SliverFillRemaining(
                                    hasScrollBody: false,
                                    child: Center(
                                      child: Column(
                                        crossAxisAlignment: screen.isDesktop ? CrossAxisAlignment.start : CrossAxisAlignment.center,
                                        mainAxisAlignment: screen.isDesktop ? MainAxisAlignment.start : MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          // if (screen.isDesktop) const Spacer(),
                                          ...buildSimpleContent(),
                                          Divider(
                                            color: Colors.transparent,
                                            height: screen.isDesktop ? 100 : 50,
                                          ),
                                          formView(
                                            screen.context,
                                            form: form,
                                            isDesktop: screen.isDesktop,
                                          ),
                                          // if (screen.isDesktop) const Spacer(),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Get.isDarkMode ? Theme.of(screen.context).cardColor : const Color(0xff28C76F).withOpacity(0.26),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: SizedBox(
                    height: double.maxFinite,
                    child: buildBrandLogo(screen.isDesktop),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDefaultView(BuildContext context, {required FormGroup form}) {
    return CustomScrollView(
      controller: ScrollController(),
      physics: const ClampingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: buildBrandLogo(screen.isDesktop),
        ),
        SliverToBoxAdapter(
          child: Center(
            child: formView(
              context,
              form: form,
              isDesktop: false,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildBrandLogo(bool isDesktop) {
    return Center(
      child: SizedBox.square(
        dimension: screen.isDesktop
            ? screen.width <= 1920
                ? Get.width * 0.3
                : 580
            : 250,
        child: RotationTransition(
          turns: screen.isDesktop ? const AlwaysStoppedAnimation(0 / 360) : const AlwaysStoppedAnimation(0 / 360),
          child: dashboard.config.brandLogo,
        ),
      ),
    );
  }

  Widget formView(BuildContext context, {required FormGroup form, required bool isDesktop}) {
    return SizedBox(
      width: isDesktop ? screen.width * 0.4 : Get.width * 0.85,
      child: Center(
        child: Column(
          crossAxisAlignment: isDesktop ? CrossAxisAlignment.start : CrossAxisAlignment.center,
          mainAxisAlignment: isDesktop ? MainAxisAlignment.start : MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                'Email Address',
                textScaleFactor: Get.textScaleFactor,
                style: Theme.of(screen.context).textTheme.bodyText2?.copyWith(
                      color: Theme.of(screen.context).disabledColor,
                    ),
              ),
            ),
            ReactiveTextField(
              formControlName: 'email',
              validationMessages: (control) => {
                ValidationMessage.required: 'Email can not be empty'.tr,
                ValidationMessage.email: 'Must be a valid email'.tr,
              },
              onEditingComplete: () => form.focus('password'),
              cursorColor: Theme.of(screen.context).indicatorColor,
              cursorHeight: 25,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                hintText: 'example@${dashboard.title.split(" ").first.toLowerCase()}.com',
                border: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Theme.of(screen.context).disabledColor,
                )),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Theme.of(screen.context).disabledColor,
                )),
                errorBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.green,
                )),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Theme.of(screen.context).disabledColor,
                )),
                disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Theme.of(screen.context).disabledColor,
                )),
                focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Theme.of(screen.context).disabledColor,
                )),
              ),
            ),
            const Divider(
              color: Colors.transparent,
              height: 30,
            ),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                'Password',
                textScaleFactor: Get.textScaleFactor,
                style: Theme.of(screen.context).textTheme.bodyText2?.copyWith(
                      color: Theme.of(screen.context).disabledColor,
                    ),
              ),
            ),
            Obx(
              () => ReactiveTextField(
                formControlName: 'password',
                obscureText: !controller.isPasswordVisible.value,
                onEditingComplete: () => form.unfocus(),
                validationMessages: (control) => {
                  ValidationMessage.required: 'The password must not be empty'.tr,
                  ValidationMessage.minLength: 'The password must be at least 6 characters'.tr,
                  ValidationMessage.pattern: 'Passowrd should be alphanumeric'.tr
                },
                cursorColor: Theme.of(screen.context).indicatorColor,
                cursorHeight: 25,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  hintText: 'Enter your password',
                  suffix: IconButton(
                    onPressed: controller.isPasswordVisible.toggle,
                    icon: Icon(
                      controller.isPasswordVisible.value ? Icons.visibility_off : Icons.visibility,
                      color: Theme.of(screen.context).disabledColor,
                    ),
                  ),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Theme.of(screen.context).disabledColor,
                  )),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Theme.of(screen.context).disabledColor,
                  )),
                  errorBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.green,
                  )),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Theme.of(screen.context).disabledColor,
                  )),
                  disabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Theme.of(screen.context).disabledColor,
                  )),
                  focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Theme.of(screen.context).disabledColor,
                  )),
                ),
              ),
            ),
            const Divider(
              color: Colors.transparent,
              height: 80,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  print('Forgot password');
                },
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Text(
                  'Forgot Password?',
                  style: Theme.of(screen.context).textTheme.subtitle1?.copyWith(
                        color: AppColors.grey,
                      ),
                ),
              ),
            ),
            const Divider(
              color: Colors.transparent,
              height: 20,
            ),
            _buildSubmitButton(screen.context),
            const Divider(
              color: Colors.transparent,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  print('Trouble login');
                },
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: Divider.createBorderSide(context).copyWith(
                        color: AppColors.grey,
                      ),
                    ),
                  ),
                  child: Text(
                    'Trouble Log in?',
                    style: Theme.of(screen.context).textTheme.subtitle1?.copyWith(
                          color: AppColors.grey,
                        ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> buildSimpleContent() {
    return [
      Text(
        "Log in",
        textScaleFactor: Get.textScaleFactor,
        style: Theme.of(screen.context).textTheme.headline4?.copyWith(
              fontWeight: FontWeight.bold,
              color: Get.isDarkMode ? Get.theme.primaryColor : Colors.black,
            ),
      ),
      const Divider(
        color: Colors.transparent,
      ),
      Text(
        "Enter below details to continue ",
        textScaleFactor: Get.textScaleFactor,
        style: Theme.of(screen.context).textTheme.subtitle2?.copyWith(
              color: Theme.of(screen.context).disabledColor,
              fontWeight: FontWeight.normal,
            ),
      ),
    ];
  }

  Widget _buildSubmitButton(
    BuildContext context,
  ) {
    final RxBool _isProcessing = false.obs;
    return Obx(
      () => Center(
        child: LoadingButton(
          onPressed: () async {
            _isProcessing(true);
            await controller.handleLogin().whenComplete(() => _isProcessing(false));
          },
          defaultWidget: Text(
            'Login to Continue',
            textScaleFactor: Get.textScaleFactor,
            style: Theme.of(context).textTheme.button?.copyWith(
                  color: screen.context.isDarkMode ? Theme.of(context).textTheme.button?.color : Theme.of(context).scaffoldBackgroundColor,
                ),
          ),
          loadingWidget: CircularProgressIndicator(
            color: Theme.of(context).indicatorColor,
          ),
          color: _isProcessing.value ? Colors.transparent : Theme.of(context).primaryColor,
          type: _isProcessing.value ? LoadingButtonType.Outline : LoadingButtonType.Raised,
          borderRadius: 10,
          height: 56,
        ),
      ),
    );
  }
}
