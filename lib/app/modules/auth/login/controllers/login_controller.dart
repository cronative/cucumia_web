import 'package:bot_toast/bot_toast.dart';
import 'package:cucumia_admin/constants/constants.dart';
import 'package:cucumia_admin/services/auth_service.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';

class LoginController extends GetxController {
  final AuthService _authService = AuthService.to;

  final FormGroup emailLoginForm = FormGroup(
    {
      'email': FormControl<String>(
        validators: [
          Validators.required,
          Validators.email,
        ],
      ),
      'password': FormControl<String>(
        validators: [
          Validators.required,
          Validators.minLength(6),
          Validators.pattern(passwordPattern),
        ],
      ),
    },
  );

  final RxBool isPasswordVisible = false.obs;

  void _checkUserAndNavigate() async {
    await Future.delayed(400.milliseconds, () {
      String? afterLoginRoute;
      // print(Get.rootDelegate.parameters);
      if (Get.rootDelegate.parameters.containsKey('then')) {
        afterLoginRoute = Get.rootDelegate.parameters['then']!;
      }
      // print(afterLoginRoute);
      if (afterLoginRoute != null) {
        Get.rootDelegate.toNamed(afterLoginRoute);
      } else {
        Get.rootDelegate.toNamed(DashboardRoutes.DASHBOARD);
      }
    });
  }

  Future<void> handleLogin() async {
    if (emailLoginForm.valid) {
      await _authService
          .login(emailLoginForm.value)
          .then((bool? _isLoginSuccess) {
        if (_isLoginSuccess != null) {
          if (_isLoginSuccess) {
            if (_authService.user.value != null) {
              // _checkUserTypeAndNavigate(_authService.user.value!);
              // _authService.getLogedInUserDetails();
              // _authService.enableOrDisableRoutes(_authService.user.value!);
              _checkUserAndNavigate();
            } else {
              BotToast.showText(text: 'Error login');
            }
          }
        }
      });
    } else {
      emailLoginForm.markAllAsTouched();
    }
  }
}
