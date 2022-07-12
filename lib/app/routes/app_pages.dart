import 'package:cucumia_admin/app/modules/deletion_status/controllers/deletion_status_controller.dart';
import 'package:flutter/material.dart';

import 'package:flutter_dashboard/flutter_dashboard.dart';
import 'package:iconly/iconly.dart';

import '../../middlewares/auth_middleware.dart';
import '../../themes/app_theme.dart';
import '../modules/auth/login/bindings/login_binding.dart';
import '../modules/auth/login/views/login_view.dart';
import '../modules/banner_ads/bindings/banner_ads_binding.dart';
import '../modules/banner_ads/views/banner_ads_view.dart';
import '../modules/deletion_status/bindings/deletion_status_binding.dart';
import '../modules/deletion_status/views/deletion_status_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/magazine/bindings/magazine_binding.dart';
import '../modules/magazine/views/magazine_view.dart';
import '../modules/products/hot_deals/bindings/hot_deals_binding.dart';
import '../modules/products/hot_deals/views/hot_deals_view.dart';
import '../modules/products/matser_list/bindings/matser_list_binding.dart';
import '../modules/products/matser_list/views/matser_list_view.dart';
import '../modules/products/products_listing/bindings/products_listing_binding.dart';
import '../modules/products/products_listing/views/products_listing_view.dart';
import '../modules/products/published_products/bindings/published_products_binding.dart';
import '../modules/products/published_products/views/published_products_view.dart';
import '../modules/products/scheduled_products/bindings/scheduled_products_binding.dart';
import '../modules/products/scheduled_products/views/scheduled_products_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/registration/bindings/registration_binding.dart';
import '../modules/registration/views/registration_view.dart';
import '../modules/shop_listing/bindings/shop_listing_binding.dart';
import '../modules/shop_listing/views/shop_listing_view.dart';
import '../modules/subscriptions/bindings/subscriptions_binding.dart';
import '../modules/subscriptions/views/subscriptions_view.dart';
import '../modules/users/affiliate/bindings/affiliate_binding.dart';
import '../modules/users/affiliate/views/affiliate_view.dart';
import '../modules/users/country_partners/bindings/country_partners_binding.dart';
import '../modules/users/country_partners/views/country_partners_view.dart';
import '../modules/users/merchants/bindings/merchants_binding.dart';
import '../modules/users/merchants/views/merchants_view.dart';
import '../modules/utils/account/bindings/account_binding.dart';
import '../modules/utils/account/views/account_view.dart';
import '../modules/utils/action_log/bindings/action_log_binding.dart';
import '../modules/utils/action_log/views/action_log_view.dart';
import '../modules/utils/contact_us/bindings/contact_us_binding.dart';
import '../modules/utils/contact_us/views/contact_us_view.dart';
import '../modules/utils/help/bindings/help_binding.dart';
import '../modules/utils/help/views/help_view.dart';
import '../modules/utils/payments/bindings/payments_binding.dart';
import '../modules/utils/payments/views/payments_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENTS,
      page: () => const PaymentsView(),
      binding: PaymentsBinding(),
    ),
    GetPage(
      name: _Paths.HELP,
      page: () => const HelpView(),
      binding: HelpBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.AFFILIATE,
      page: () => AffiliateView(),
      binding: AffiliateBinding(),
    ),
    GetPage(
      name: _Paths.MERCHANTS,
      page: () => MerchantsView(),
      binding: MerchantsBinding(),
    ),
    GetPage(
      name: _Paths.ACTION_LOG,
      page: () => ActionLogView(),
      binding: ActionLogBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT,
      page: () => AccountView(),
      binding: AccountBinding(),
    ),
    GetPage(
      name: _Paths.CONTACT_US,
      page: () => ContactUsView(),
      binding: ContactUsBinding(),
    ),
    // GetPage(
    //   name: _Paths.SCHEDULED_PRODUCTS,
    // page: () => ScheduledProductsView(),
    // binding: ScheduledProductsBinding(),
    // ),
    GetPage(
      name: _Paths.HOT_DEALS,
      page: () => HotDealsView(),
      binding: HotDealsBinding(),
    ),
    GetPage(
      name: _Paths.PUBLISHED_PRODUCTS,
      page: () => PublishedProductsView(),
      binding: PublishedProductsBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCTS_LISTING,
      page: () => ProductsListingView(),
      binding: ProductsListingBinding(),
    ),
    GetPage(
      name: _Paths.DELETION_STATUS,
      page: () => DeletionStatusView(),
      binding: DeletionStatusBinding(),
    ),
    GetPage(
      name: _Paths.SUBSCRIPTIONS,
      page: () => SubscriptionsView(),
      binding: SubscriptionsBinding(),
    ),
    GetPage(
      name: _Paths.SHOP_LISTING,
      page: () => ShopListingView(),
      binding: ShopListingBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.REGISTRATION,
      page: () => RegistrationView(),
      binding: RegistrationBinding(),
    ),
    GetPage(
      name: _Paths.BANNER_ADS,
      page: () => BannerAdsView(),
      binding: BannerAdsBinding(),
    ),
  ];

  static final List<GetPage> rootPages = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
      middlewares: [
        EnsureNotAuthenticated(),
      ],
    ),
  ];

  static List<FlutterDashboardItem> footerPages(BuildContext context) {
    DeletionStatusController deletionStatusController = Get.put(DeletionStatusController());
    return [
      FlutterDashboardItem(
        title: 'Account',
        page: GetPage(
          name: _Paths.ACCOUNT,
          page: () {
            deletionStatusController.isVisible.value = false;
            return AccountView();
          },
          binding: AccountBinding(),
          middlewares: [
            EnsureAuthenticated(),
          ],
        ),
        icon: const Icon(
          Icons.settings,
        ),
        selectedIcon: Icon(
          Icons.settings,
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
      ),
      FlutterDashboardItem(
        title: 'Contact us',
        page: GetPage(
          name: _Paths.CONTACT_US,
          page: () {
            deletionStatusController.isVisible.value = false;
            return ContactUsView();
          },
          binding: ContactUsBinding(),
          middlewares: [
            EnsureAuthenticated(),
          ],
        ),
        icon: const Icon(
          IconlyLight.profile,
        ),
        selectedIcon: Icon(
          IconlyBold.profile,
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
      ),
      FlutterDashboardItem(
        title: 'Help',
        page: GetPage(
          name: _Paths.HELP,
          page: () {
            deletionStatusController.isVisible.value = false;
            return const HelpView();
          },
          binding: HelpBinding(),
          middlewares: [
            EnsureAuthenticated(),
          ],
        ),
        icon: const Icon(
          Icons.help_outline_sharp,
        ),
        selectedIcon: Icon(
          Icons.help_outlined,
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
      ),
    ];
  }

  static List<FlutterDashboardItem> allPages(BuildContext context) {
    DeletionStatusController deletionStatusController = Get.put(DeletionStatusController());

    return [
      FlutterDashboardItem(
        title: 'Dashboard',
        page: GetPage(
          name: _Paths.HOME,
          page: () {
            deletionStatusController.isVisible.value = false;
            return HomeView();
          },
          binding: HomeBinding(),
          middlewares: [
            EnsureAuthenticated(),
          ],
        ),
        icon: const Icon(
          IconlyLight.home,
        ),
        selectedIcon: Icon(
          IconlyBold.home,
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
      ),
      FlutterDashboardItem(
        title: 'Country Partners',
        page: GetPage(
          name: _Paths.COUNTRY_PARTNERS,
          page: () {
            deletionStatusController.isVisible.value = false;
            return CountryPartnersView();
          },
          binding: CountryPartnersBinding(),
          middlewares: [
            EnsureAuthenticated(),
          ],
        ),
        icon: const Icon(
          IconlyLight.discovery,
        ),
        selectedIcon: Icon(
          IconlyBold.discovery,
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
      ),
      FlutterDashboardItem.items(
        title: 'Users',
        icon: const Icon(
          IconlyLight.user,
        ),
        subItems: [
          FlutterDashboardItem(
            title: 'Affiliate',
            page: GetPage(
              name: _Paths.AFFILIATE,
              page: () {
                deletionStatusController.isVisible.value = false;
                return AffiliateView();
              },
              binding: AffiliateBinding(),
              middlewares: [
                EnsureAuthenticated(),
              ],
            ),
            icon: SizedBox.square(
              dimension: 24,
              child: Image.asset(
                "assets/check_box.png",
                scale: 1,
                color: AppColors.grey,
              ),
            ),
            selectedIcon: SizedBox.square(
              dimension: 24,
              child: Image.asset(
                "assets/check_box.png",
                scale: 1,
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
          ),
        ],
      ),

      FlutterDashboardItem(
        title: 'Registration',
        page: GetPage(
          name: _Paths.REGISTRATION,
          page: () {
            return RegistrationView();
          },
          binding: RegistrationBinding(),
          middlewares: [
            EnsureAuthenticated(),
          ],
        ),
        icon: const Icon(
          IconlyLight.home,
        ),
        selectedIcon: Icon(
          IconlyBold.home,
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
      ),
      FlutterDashboardItem(
        title: 'Shop Listing',
        page: GetPage(
          name: _Paths.SHOP_LISTING,
          page: () {
            deletionStatusController.isVisible.value = false;
            return ShopListingView();
          },
          binding: ShopListingBinding(),
          middlewares: [
            EnsureAuthenticated(),
          ],
        ),
        icon: const Icon(
          Icons.person_outline,
        ),
        selectedIcon: Icon(
          Icons.person_outline,
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
      ),
      FlutterDashboardItem(
        title: 'Magazine',
        page: GetPage(
          name: _Paths.MAGAZINE,
          page: () {
            deletionStatusController.isVisible.value = false;
            return MagazineView();
          },
          binding: MagazineBinding(),
          middlewares: [
            EnsureAuthenticated(),
          ],
        ),
        icon: const Icon(
          IconlyLight.scan,
        ),
        selectedIcon: Icon(
          IconlyBold.scan,
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
      ),

      FlutterDashboardItem(
        title: 'Merchants',
        page: GetPage(
          name: _Paths.MERCHANTS,
          page: () {
            deletionStatusController.isVisible.value = false;
            return MerchantsView();
          },
          binding: MerchantsBinding(),
          middlewares: [
            EnsureAuthenticated(),
          ],
        ),
        icon: const Icon(
          IconlyLight.profile,
        ),
        selectedIcon: Icon(
          IconlyBold.profile,
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
      ),
      FlutterDashboardItem(
        title: 'Master List',
        page: GetPage(
          name: _Paths.MATSER_LIST,
          page: () => MatserListView(),
          binding: MatserListBinding(),
          middlewares: [
            EnsureAuthenticated(),
          ],
        ),
        icon: const Icon(
          IconlyLight.chart,
        ),
        selectedIcon: Icon(
          IconlyBold.chart,
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
      ),
      FlutterDashboardItem(
        title: 'Scheduled Products',
        page: GetPage(
          name: _Paths.SCHEDULED_PRODUCTS,
          page: () => ScheduledProductsView(),
          binding: ScheduledProductsBinding(),
          middlewares: [
            EnsureAuthenticated(),
          ],
        ),
        icon: const Icon(
          IconlyLight.calendar,
        ),
        selectedIcon: Icon(
          IconlyBold.calendar,
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
      ),
      FlutterDashboardItem(
        title: 'Hot Deals',
        page: GetPage(
          name: _Paths.HOT_DEALS,
          page: () => HotDealsView(),
          binding: HotDealsBinding(),
          middlewares: [
            EnsureAuthenticated(),
          ],
        ),
        icon: const Icon(
          IconlyLight.discount,
        ),
        selectedIcon: Icon(
          IconlyBold.discount,
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
      ),
      FlutterDashboardItem(
        title: 'Published Products',
        page: GetPage(
          name: _Paths.PUBLISHED_PRODUCTS,
          page: () => PublishedProductsView(),
          binding: PublishedProductsBinding(),
          middlewares: [
            EnsureAuthenticated(),
          ],
        ),
        icon: const Icon(
          IconlyLight.bag,
        ),
        selectedIcon: Icon(
          IconlyBold.bag,
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
      ),
      FlutterDashboardItem(
        title: 'Product Listing',
        page: GetPage(
          name: _Paths.PRODUCTS_LISTING,
          page: () => ProductsListingView(),
          binding: ProductsListingBinding(),
          middlewares: [
            EnsureAuthenticated(),
          ],
        ),
        icon: const Icon(
          Icons.flag_outlined,
        ),
        selectedIcon: Icon(
          Icons.flag,
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
      ),

      // FlutterDashboardItem.items(
      //   title: 'Products',
      //   icon: const Icon(
      //     IconlyLight.folder,
      //   ),
      //   // subItems: [

      //   // ],
      // ),

      FlutterDashboardItem(
        title: 'Action Log',
        page: GetPage(
          name: _Paths.ACTION_LOG,
          page: () {
            deletionStatusController.isVisible.value = false;
            return ActionLogView();
          },
          binding: ActionLogBinding(),
          middlewares: [
            EnsureAuthenticated(),
          ],
        ),
        icon: const Icon(
          Icons.visibility_outlined,
        ),
        selectedIcon: Icon(
          Icons.visibility_rounded,
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
      ),
      FlutterDashboardItem(
        title: "Subscriptions",
        page: GetPage(
          name: _Paths.SUBSCRIPTIONS,
          page: () {
            deletionStatusController.isVisible.value = false;
            return SubscriptionsView();
          },
          binding: SubscriptionsBinding(),
          middlewares: [
            EnsureAuthenticated(),
          ],
        ),
        icon: Icon(IconlyLight.discount),
        selectedIcon: Icon(IconlyBold.discount, color: Theme.of(context).scaffoldBackgroundColor),
      ),
      FlutterDashboardItem(
        title: "Banner Ads",
        page: GetPage(
          name: _Paths.BANNER_ADS,
          page: () {
            deletionStatusController.isVisible.value = false;
            return BannerAdsView();
          },
          binding: BannerAdsBinding(),
          middlewares: [
            EnsureAuthenticated(),
          ],
        ),
        icon: Image.asset(
          'assets/subscription.png',
          color: Colors.green,
          width: 20,
          height: 20,
        ),
        selectedIcon: Image.asset(
          'assets/subscription.png',
          color: Colors.white,
          width: 25,
          height: 25,
        ),
      ),
      // Remove this only after deletion status is fucntional
      FlutterDashboardItem(
        title: "Notifications",
        page: GetPage(
          name: _Paths.DELETION_STATUS,
          page: () => DeletionStatusView(),
          binding: DeletionStatusBinding(),
          middlewares: [
            EnsureAuthenticated(),
          ],
        ),
        icon: const Icon(
          IconlyLight.notification,
        ),
        selectedIcon: Icon(
          IconlyBold.notification,
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
      )
      // FlutterDashboardItem(
      //   title: 'Payments',
      //   page: GetPage(
      //     name: _Paths.PAYMENTS,
      //     page: () => PaymentsView(),
      //     binding: PaymentsBinding(),
      //   ),
      //   icon: const Icon(
      //     IconlyLight.wallet,
      //   ),
      //   selectedIcon: Icon(
      //     IconlyBold.wallet,
      //     color: Theme.of(context).scaffoldBackgroundColor,
      //   ),
      // ),
    ];
  }
}
