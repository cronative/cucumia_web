part of 'app_pages.dart';
// DO NOT EDIT. This is code generated via package:get_cli/get_cli.dart

abstract class Routes {
  Routes._();

  static const HOME = _Paths.HOME;
  static const PRODUCTS = _Paths.PRODUCTS;
  static const PAYMENTS = _Paths.PAYMENTS;
  static const HELP = _Paths.HELP;
  static const LOGIN = _Paths.LOGIN;

  static String LOGIN_THEN(String afterSuccessfulLogin) =>
      '$LOGIN?then=${Uri.encodeQueryComponent(afterSuccessfulLogin)}';
  static const DELETION_STATUS = _Paths.DELETION_STATUS;

  static const AFFILIATE = _Paths.AFFILIATE;
  static const MERCHANTS = _Paths.MERCHANTS;
  static const ACTION_LOG = _Paths.ACTION_LOG;
  static const ACCOUNT = _Paths.ACCOUNT;
  static const CONTACT_US = _Paths.CONTACT_US;
  static const MATSER_LIST = _Paths.MATSER_LIST;
  static const SCHEDULED_PRODUCTS = _Paths.SCHEDULED_PRODUCTS;
  static const HOT_DEALS = _Paths.HOT_DEALS;
  static const PUBLISHED_PRODUCTS = _Paths.PUBLISHED_PRODUCTS;
  static const PRODUCTS_LISTING = _Paths.PRODUCTS_LISTING;
  static const COUNTRY_PARTNERS = _Paths.COUNTRY_PARTNERS;
  static const MAGAZINE = _Paths.MAGAZINE;
  static const SUBSCRIPTIONS = _Paths.SUBSCRIPTIONS;
  static const SHOP_LISTING = _Paths.SHOP_LISTING;
  static const PROFILE = _Paths.PROFILE;
  static const REGISTRATION = _Paths.REGISTRATION;
  static const BANNER_ADS = _Paths.BANNER_ADS;
}

abstract class _Paths {
  static const HOME = '/home';
  static const PRODUCTS = '/products';
  static const PAYMENTS = '/payments';
  static const LOGIN = '/login';
  static const DELETION_STATUS = '/deletion-status';
  static const AFFILIATE = '/affiliate';
  static const MERCHANTS = '/merchants';
  static const ACTION_LOG = '/action-log';
  static const HELP = '/help';
  static const ACCOUNT = '/account';
  static const CONTACT_US = '/contact-us';
  static const MATSER_LIST = '/matser-list';
  static const SCHEDULED_PRODUCTS = '/scheduled-products';
  static const HOT_DEALS = '/hot-deals';
  static const PUBLISHED_PRODUCTS = '/published-products';
  static const PRODUCTS_LISTING = '/products-listing';
  static const COUNTRY_PARTNERS = '/country-partners';
  static const MAGAZINE = '/magazine';
  static const SUBSCRIPTIONS = '/subscriptions';
  static const SHOP_LISTING = '/shop-listing';
  static const PROFILE = '/profile';
  static const REGISTRATION = '/registration';
  static const BANNER_ADS = '/banner-ads';
}
