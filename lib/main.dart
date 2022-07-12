import 'package:bot_toast/bot_toast.dart';
import 'package:cucumia_admin/app/widgets/appbar_actions/notification_button.dart';
import 'package:cucumia_admin/app/widgets/appbar_actions/user_button.dart';
import 'package:cucumia_admin/app/widgets/drawer_header.dart';
import 'package:cucumia_admin/constants/constants.dart';
import 'package:cucumia_admin/middlewares/auth_middleware.dart';
import 'package:cucumia_admin/services/auth_service.dart';
import 'package:cucumia_admin/services/data_service.dart';
import 'package:cucumia_admin/themes/app_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_strategy/url_strategy.dart';
import 'app/routes/app_pages.dart';

part 'utils/graphql/gql_provider.dart';
part './configs/app_configs.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  setPathUrlStrategy();
  await GetStorage.init();
  await initHiveForFlutter();
  packageInfo = await PackageInfo.fromPlatform();
  runApp(const RootApp());
}

class RootApp extends AppConfig {
  const RootApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return _ClientProvider(
    //   child:
    // );

    return FlutterDashboardMaterialApp(
      title: "Cucumia Admin",
      config: AppConfig.dashboardConfig,
      dashboardItems: AppPages.allPages(context),
      drawerOptions: AppConfig.drawerOptions(context),
      appBarOptions: AppConfig.rootAppBarOptions,
      overrideActions: [
        NotificationButton(),
        AppBarUserButton(),
      ],
      rootControllers: [
        Get.lazyPut(() => AuthService(), fenix: true),
        Get.lazyPut(() => DataService(), fenix: true),
      ],
      rootPages: AppPages.rootPages,
      dashboardMiddlewares: [
        EnsureAuthenticated(),
      ],
      overrideRootPage: (BuildContext context, GetDelegate delegate, GetNavConfig? currentRoute) {
        String _initialRoute = '/';

        if (AuthService.to.isAuthenticated) {
          _initialRoute = DashboardRoutes.DASHBOARD;
        } else {
          _initialRoute = Routes.LOGIN;
        }
        return GetRouterOutlet(
          initialRoute: _initialRoute,
        );
      },
      builder: BotToastInit(), //1. call BotToastInit
      navigatorObservers: [
        BotToastNavigatorObserver(),
      ],
    );
  }
}
