import 'package:cucumia_admin/app/routes/app_pages.dart';
import 'package:cucumia_admin/services/auth_service.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';

class EnsureAuthenticated extends GetMiddleware {
  @override
  Future<GetNavConfig?> redirectDelegate(GetNavConfig route) async {
    AuthService.to.readAuthToken();
    if (!AuthService.to.isAuthenticated) {
      final newRoute = Routes.LOGIN_THEN(route.location!);
      return GetNavConfig.fromRoute(newRoute);
    }
    return await super.redirectDelegate(route);
  }
}

class EnsureNotAuthenticated extends GetMiddleware {
  @override
  Future<GetNavConfig?> redirectDelegate(GetNavConfig route) async {
    AuthService.to.readAuthToken();
    if (AuthService.to.isAuthenticated) {
      const newRoute = DashboardRoutes.DASHBOARD;
      return GetNavConfig.fromRoute(newRoute);
    }
    return await super.redirectDelegate(route);
  }
}
