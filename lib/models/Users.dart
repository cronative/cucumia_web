/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, file_names, unnecessary_new, prefer_if_null_operators, prefer_const_constructors, slash_for_doc_comments, annotate_overrides, non_constant_identifier_names, unnecessary_string_interpolations, prefer_adjacent_string_concatenation, unnecessary_const, dead_code

import 'ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Users type in your schema. */
@immutable
class Users extends Model {
  static const classType = const _UsersModelType();
  final String id;
  final String? _fullname;
  final String? _img_token;
  final String? _phn_number;
  final String? _gmail_id;
  final String? _fb_id;
  final String? _applie_id;
  final String? _email;
  final String? _phonepinID;
  final List<SubscriptionLogs>? _userShop;
  final List<SubscriptionLogs>? _Magazines_by;
  final UserType? _user_type;
  final List<SubscriptionLogs>? _UserProductReviews;
  final List<SubscriptionLogs>? _UserShopReviews;
  final List<SubscriptionLogs>? _UserShopFavourites;
  final String? _current_language;
  final double? _current_lat;
  final bool? _isUserSecure;
  final double? _radiusPreference;
  final String? _saved_location;
  final double? _current_lon;
  final String? _managed_by;
  final String? _deleted_parent;
  final List<SubscriptionLogs>? _AdvertisementBanners;
  final List<SubscriptionLogs>? _InvitedBy;
  final String? _city;
  final String? _country;
  final UserStatus? _status;
  final List<SubscriptionLogs>? _BundlesUser;
  final List<SubscriptionLogs>? _created_by;
  final List<SubscriptionLogs>? _user_subscription;
  final List<SubscriptionLogs>? _UserActivityLogs;
  final List<SubscriptionLogs>? _BulkUploadFilesUsers;
  final List<SubscriptionLogs>? _userDevices;
  final List<SubscriptionLogs>? _MagazineShopCounts;
  final int? _mag_subscription_left;
  final int? _shops_subscription_left;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get fullname {
    return _fullname;
  }
  
  String? get img_token {
    return _img_token;
  }
  
  String? get phn_number {
    return _phn_number;
  }
  
  String? get gmail_id {
    return _gmail_id;
  }
  
  String? get fb_id {
    return _fb_id;
  }
  
  String? get applie_id {
    return _applie_id;
  }
  
  String? get email {
    return _email;
  }
  
  String? get phonepinID {
    return _phonepinID;
  }
  
  List<SubscriptionLogs>? get userShop {
    return _userShop;
  }
  
  List<SubscriptionLogs>? get Magazines_by {
    return _Magazines_by;
  }
  
  UserType? get user_type {
    return _user_type;
  }
  
  List<SubscriptionLogs>? get UserProductReviews {
    return _UserProductReviews;
  }
  
  List<SubscriptionLogs>? get UserShopReviews {
    return _UserShopReviews;
  }
  
  List<SubscriptionLogs>? get UserShopFavourites {
    return _UserShopFavourites;
  }
  
  String? get current_language {
    return _current_language;
  }
  
  double? get current_lat {
    return _current_lat;
  }
  
  bool? get isUserSecure {
    return _isUserSecure;
  }
  
  double? get radiusPreference {
    return _radiusPreference;
  }
  
  String? get saved_location {
    return _saved_location;
  }
  
  double? get current_lon {
    return _current_lon;
  }
  
  String? get managed_by {
    return _managed_by;
  }
  
  String? get deleted_parent {
    return _deleted_parent;
  }
  
  List<SubscriptionLogs>? get AdvertisementBanners {
    return _AdvertisementBanners;
  }
  
  List<SubscriptionLogs>? get InvitedBy {
    return _InvitedBy;
  }
  
  String? get city {
    return _city;
  }
  
  String? get country {
    return _country;
  }
  
  UserStatus? get status {
    return _status;
  }
  
  List<SubscriptionLogs>? get BundlesUser {
    return _BundlesUser;
  }
  
  List<SubscriptionLogs>? get created_by {
    return _created_by;
  }
  
  List<SubscriptionLogs>? get user_subscription {
    return _user_subscription;
  }
  
  List<SubscriptionLogs>? get UserActivityLogs {
    return _UserActivityLogs;
  }
  
  List<SubscriptionLogs>? get BulkUploadFilesUsers {
    return _BulkUploadFilesUsers;
  }
  
  List<SubscriptionLogs>? get userDevices {
    return _userDevices;
  }
  
  List<SubscriptionLogs>? get MagazineShopCounts {
    return _MagazineShopCounts;
  }
  
  int? get mag_subscription_left {
    return _mag_subscription_left;
  }
  
  int? get shops_subscription_left {
    return _shops_subscription_left;
  }
  
  const Users._internal({required this.id, fullname, img_token, phn_number, gmail_id, fb_id, applie_id, email, phonepinID, userShop, Magazines_by, user_type, UserProductReviews, UserShopReviews, UserShopFavourites, current_language, current_lat, isUserSecure, radiusPreference, saved_location, current_lon, managed_by, deleted_parent, AdvertisementBanners, InvitedBy, city, country, status, BundlesUser, created_by, user_subscription, UserActivityLogs, BulkUploadFilesUsers, userDevices, MagazineShopCounts, mag_subscription_left, shops_subscription_left}): _fullname = fullname, _img_token = img_token, _phn_number = phn_number, _gmail_id = gmail_id, _fb_id = fb_id, _applie_id = applie_id, _email = email, _phonepinID = phonepinID, _userShop = userShop, _Magazines_by = Magazines_by, _user_type = user_type, _UserProductReviews = UserProductReviews, _UserShopReviews = UserShopReviews, _UserShopFavourites = UserShopFavourites, _current_language = current_language, _current_lat = current_lat, _isUserSecure = isUserSecure, _radiusPreference = radiusPreference, _saved_location = saved_location, _current_lon = current_lon, _managed_by = managed_by, _deleted_parent = deleted_parent, _AdvertisementBanners = AdvertisementBanners, _InvitedBy = InvitedBy, _city = city, _country = country, _status = status, _BundlesUser = BundlesUser, _created_by = created_by, _user_subscription = user_subscription, _UserActivityLogs = UserActivityLogs, _BulkUploadFilesUsers = BulkUploadFilesUsers, _userDevices = userDevices, _MagazineShopCounts = MagazineShopCounts, _mag_subscription_left = mag_subscription_left, _shops_subscription_left = shops_subscription_left;
  
  factory Users({String? id, String? fullname, String? img_token, String? phn_number, String? gmail_id, String? fb_id, String? applie_id, String? email, String? phonepinID, List<SubscriptionLogs>? userShop, List<SubscriptionLogs>? Magazines_by, UserType? user_type, List<SubscriptionLogs>? UserProductReviews, List<SubscriptionLogs>? UserShopReviews, List<SubscriptionLogs>? UserShopFavourites, String? current_language, double? current_lat, bool? isUserSecure, double? radiusPreference, String? saved_location, double? current_lon, String? managed_by, String? deleted_parent, List<SubscriptionLogs>? AdvertisementBanners, List<SubscriptionLogs>? InvitedBy, String? city, String? country, UserStatus? status, List<SubscriptionLogs>? BundlesUser, List<SubscriptionLogs>? created_by, List<SubscriptionLogs>? user_subscription, List<SubscriptionLogs>? UserActivityLogs, List<SubscriptionLogs>? BulkUploadFilesUsers, List<SubscriptionLogs>? userDevices, List<SubscriptionLogs>? MagazineShopCounts, int? mag_subscription_left, int? shops_subscription_left}) {
    return Users._internal(
      id: id == null ? UUID.getUUID() : id,
      fullname: fullname,
      img_token: img_token,
      phn_number: phn_number,
      gmail_id: gmail_id,
      fb_id: fb_id,
      applie_id: applie_id,
      email: email,
      phonepinID: phonepinID,
      userShop: userShop != null ? List<SubscriptionLogs>.unmodifiable(userShop) : userShop,
      Magazines_by: Magazines_by != null ? List<SubscriptionLogs>.unmodifiable(Magazines_by) : Magazines_by,
      user_type: user_type,
      UserProductReviews: UserProductReviews != null ? List<SubscriptionLogs>.unmodifiable(UserProductReviews) : UserProductReviews,
      UserShopReviews: UserShopReviews != null ? List<SubscriptionLogs>.unmodifiable(UserShopReviews) : UserShopReviews,
      UserShopFavourites: UserShopFavourites != null ? List<SubscriptionLogs>.unmodifiable(UserShopFavourites) : UserShopFavourites,
      current_language: current_language,
      current_lat: current_lat,
      isUserSecure: isUserSecure,
      radiusPreference: radiusPreference,
      saved_location: saved_location,
      current_lon: current_lon,
      managed_by: managed_by,
      deleted_parent: deleted_parent,
      AdvertisementBanners: AdvertisementBanners != null ? List<SubscriptionLogs>.unmodifiable(AdvertisementBanners) : AdvertisementBanners,
      InvitedBy: InvitedBy != null ? List<SubscriptionLogs>.unmodifiable(InvitedBy) : InvitedBy,
      city: city,
      country: country,
      status: status,
      BundlesUser: BundlesUser != null ? List<SubscriptionLogs>.unmodifiable(BundlesUser) : BundlesUser,
      created_by: created_by != null ? List<SubscriptionLogs>.unmodifiable(created_by) : created_by,
      user_subscription: user_subscription != null ? List<SubscriptionLogs>.unmodifiable(user_subscription) : user_subscription,
      UserActivityLogs: UserActivityLogs != null ? List<SubscriptionLogs>.unmodifiable(UserActivityLogs) : UserActivityLogs,
      BulkUploadFilesUsers: BulkUploadFilesUsers != null ? List<SubscriptionLogs>.unmodifiable(BulkUploadFilesUsers) : BulkUploadFilesUsers,
      userDevices: userDevices != null ? List<SubscriptionLogs>.unmodifiable(userDevices) : userDevices,
      MagazineShopCounts: MagazineShopCounts != null ? List<SubscriptionLogs>.unmodifiable(MagazineShopCounts) : MagazineShopCounts,
      mag_subscription_left: mag_subscription_left,
      shops_subscription_left: shops_subscription_left);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Users &&
      id == other.id &&
      _fullname == other._fullname &&
      _img_token == other._img_token &&
      _phn_number == other._phn_number &&
      _gmail_id == other._gmail_id &&
      _fb_id == other._fb_id &&
      _applie_id == other._applie_id &&
      _email == other._email &&
      _phonepinID == other._phonepinID &&
      DeepCollectionEquality().equals(_userShop, other._userShop) &&
      DeepCollectionEquality().equals(_Magazines_by, other._Magazines_by) &&
      _user_type == other._user_type &&
      DeepCollectionEquality().equals(_UserProductReviews, other._UserProductReviews) &&
      DeepCollectionEquality().equals(_UserShopReviews, other._UserShopReviews) &&
      DeepCollectionEquality().equals(_UserShopFavourites, other._UserShopFavourites) &&
      _current_language == other._current_language &&
      _current_lat == other._current_lat &&
      _isUserSecure == other._isUserSecure &&
      _radiusPreference == other._radiusPreference &&
      _saved_location == other._saved_location &&
      _current_lon == other._current_lon &&
      _managed_by == other._managed_by &&
      _deleted_parent == other._deleted_parent &&
      DeepCollectionEquality().equals(_AdvertisementBanners, other._AdvertisementBanners) &&
      DeepCollectionEquality().equals(_InvitedBy, other._InvitedBy) &&
      _city == other._city &&
      _country == other._country &&
      _status == other._status &&
      DeepCollectionEquality().equals(_BundlesUser, other._BundlesUser) &&
      DeepCollectionEquality().equals(_created_by, other._created_by) &&
      DeepCollectionEquality().equals(_user_subscription, other._user_subscription) &&
      DeepCollectionEquality().equals(_UserActivityLogs, other._UserActivityLogs) &&
      DeepCollectionEquality().equals(_BulkUploadFilesUsers, other._BulkUploadFilesUsers) &&
      DeepCollectionEquality().equals(_userDevices, other._userDevices) &&
      DeepCollectionEquality().equals(_MagazineShopCounts, other._MagazineShopCounts) &&
      _mag_subscription_left == other._mag_subscription_left &&
      _shops_subscription_left == other._shops_subscription_left;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Users {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("fullname=" + "$_fullname" + ", ");
    buffer.write("img_token=" + "$_img_token" + ", ");
    buffer.write("phn_number=" + "$_phn_number" + ", ");
    buffer.write("gmail_id=" + "$_gmail_id" + ", ");
    buffer.write("fb_id=" + "$_fb_id" + ", ");
    buffer.write("applie_id=" + "$_applie_id" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("phonepinID=" + "$_phonepinID" + ", ");
    buffer.write("user_type=" + (_user_type != null ? enumToString(_user_type)! : "null") + ", ");
    buffer.write("current_language=" + "$_current_language" + ", ");
    buffer.write("current_lat=" + (_current_lat != null ? _current_lat!.toString() : "null") + ", ");
    buffer.write("isUserSecure=" + (_isUserSecure != null ? _isUserSecure!.toString() : "null") + ", ");
    buffer.write("radiusPreference=" + (_radiusPreference != null ? _radiusPreference!.toString() : "null") + ", ");
    buffer.write("saved_location=" + "$_saved_location" + ", ");
    buffer.write("current_lon=" + (_current_lon != null ? _current_lon!.toString() : "null") + ", ");
    buffer.write("managed_by=" + "$_managed_by" + ", ");
    buffer.write("deleted_parent=" + "$_deleted_parent" + ", ");
    buffer.write("city=" + "$_city" + ", ");
    buffer.write("country=" + "$_country" + ", ");
    buffer.write("status=" + (_status != null ? enumToString(_status)! : "null") + ", ");
    buffer.write("mag_subscription_left=" + (_mag_subscription_left != null ? _mag_subscription_left!.toString() : "null") + ", ");
    buffer.write("shops_subscription_left=" + (_shops_subscription_left != null ? _shops_subscription_left!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Users copyWith({String? id, String? fullname, String? img_token, String? phn_number, String? gmail_id, String? fb_id, String? applie_id, String? email, String? phonepinID, List<SubscriptionLogs>? userShop, List<SubscriptionLogs>? Magazines_by, UserType? user_type, List<SubscriptionLogs>? UserProductReviews, List<SubscriptionLogs>? UserShopReviews, List<SubscriptionLogs>? UserShopFavourites, String? current_language, double? current_lat, bool? isUserSecure, double? radiusPreference, String? saved_location, double? current_lon, String? managed_by, String? deleted_parent, List<SubscriptionLogs>? AdvertisementBanners, List<SubscriptionLogs>? InvitedBy, String? city, String? country, UserStatus? status, List<SubscriptionLogs>? BundlesUser, List<SubscriptionLogs>? created_by, List<SubscriptionLogs>? user_subscription, List<SubscriptionLogs>? UserActivityLogs, List<SubscriptionLogs>? BulkUploadFilesUsers, List<SubscriptionLogs>? userDevices, List<SubscriptionLogs>? MagazineShopCounts, int? mag_subscription_left, int? shops_subscription_left}) {
    return Users(
      id: id ?? this.id,
      fullname: fullname ?? this.fullname,
      img_token: img_token ?? this.img_token,
      phn_number: phn_number ?? this.phn_number,
      gmail_id: gmail_id ?? this.gmail_id,
      fb_id: fb_id ?? this.fb_id,
      applie_id: applie_id ?? this.applie_id,
      email: email ?? this.email,
      phonepinID: phonepinID ?? this.phonepinID,
      userShop: userShop ?? this.userShop,
      Magazines_by: Magazines_by ?? this.Magazines_by,
      user_type: user_type ?? this.user_type,
      UserProductReviews: UserProductReviews ?? this.UserProductReviews,
      UserShopReviews: UserShopReviews ?? this.UserShopReviews,
      UserShopFavourites: UserShopFavourites ?? this.UserShopFavourites,
      current_language: current_language ?? this.current_language,
      current_lat: current_lat ?? this.current_lat,
      isUserSecure: isUserSecure ?? this.isUserSecure,
      radiusPreference: radiusPreference ?? this.radiusPreference,
      saved_location: saved_location ?? this.saved_location,
      current_lon: current_lon ?? this.current_lon,
      managed_by: managed_by ?? this.managed_by,
      deleted_parent: deleted_parent ?? this.deleted_parent,
      AdvertisementBanners: AdvertisementBanners ?? this.AdvertisementBanners,
      InvitedBy: InvitedBy ?? this.InvitedBy,
      city: city ?? this.city,
      country: country ?? this.country,
      status: status ?? this.status,
      BundlesUser: BundlesUser ?? this.BundlesUser,
      created_by: created_by ?? this.created_by,
      user_subscription: user_subscription ?? this.user_subscription,
      UserActivityLogs: UserActivityLogs ?? this.UserActivityLogs,
      BulkUploadFilesUsers: BulkUploadFilesUsers ?? this.BulkUploadFilesUsers,
      userDevices: userDevices ?? this.userDevices,
      MagazineShopCounts: MagazineShopCounts ?? this.MagazineShopCounts,
      mag_subscription_left: mag_subscription_left ?? this.mag_subscription_left,
      shops_subscription_left: shops_subscription_left ?? this.shops_subscription_left);
  }
  
  Users.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _fullname = json['fullname'],
      _img_token = json['img_token'],
      _phn_number = json['phn_number'],
      _gmail_id = json['gmail_id'],
      _fb_id = json['fb_id'],
      _applie_id = json['applie_id'],
      _email = json['email'],
      _phonepinID = json['phonepinID'],
      _userShop = json['userShop'] is List
        ? (json['userShop'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => SubscriptionLogs.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _Magazines_by = json['Magazines_by'] is List
        ? (json['Magazines_by'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => SubscriptionLogs.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _user_type = enumFromString<UserType>(json['user_type'], UserType.values),
      _UserProductReviews = json['UserProductReviews'] is List
        ? (json['UserProductReviews'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => SubscriptionLogs.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _UserShopReviews = json['UserShopReviews'] is List
        ? (json['UserShopReviews'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => SubscriptionLogs.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _UserShopFavourites = json['UserShopFavourites'] is List
        ? (json['UserShopFavourites'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => SubscriptionLogs.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _current_language = json['current_language'],
      _current_lat = (json['current_lat'] as num?)?.toDouble(),
      _isUserSecure = json['isUserSecure'],
      _radiusPreference = (json['radiusPreference'] as num?)?.toDouble(),
      _saved_location = json['saved_location'],
      _current_lon = (json['current_lon'] as num?)?.toDouble(),
      _managed_by = json['managed_by'],
      _deleted_parent = json['deleted_parent'],
      _AdvertisementBanners = json['AdvertisementBanners'] is List
        ? (json['AdvertisementBanners'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => SubscriptionLogs.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _InvitedBy = json['InvitedBy'] is List
        ? (json['InvitedBy'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => SubscriptionLogs.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _city = json['city'],
      _country = json['country'],
      _status = enumFromString<UserStatus>(json['status'], UserStatus.values),
      _BundlesUser = json['BundlesUser'] is List
        ? (json['BundlesUser'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => SubscriptionLogs.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _created_by = json['created_by'] is List
        ? (json['created_by'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => SubscriptionLogs.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _user_subscription = json['user_subscription'] is List
        ? (json['user_subscription'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => SubscriptionLogs.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _UserActivityLogs = json['UserActivityLogs'] is List
        ? (json['UserActivityLogs'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => SubscriptionLogs.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _BulkUploadFilesUsers = json['BulkUploadFilesUsers'] is List
        ? (json['BulkUploadFilesUsers'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => SubscriptionLogs.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _userDevices = json['userDevices'] is List
        ? (json['userDevices'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => SubscriptionLogs.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _MagazineShopCounts = json['MagazineShopCounts'] is List
        ? (json['MagazineShopCounts'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => SubscriptionLogs.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _mag_subscription_left = (json['mag_subscription_left'] as num?)?.toInt(),
      _shops_subscription_left = (json['shops_subscription_left'] as num?)?.toInt();
  
  Map<String, dynamic> toJson() => {
    'id': id, 'fullname': _fullname, 'img_token': _img_token, 'phn_number': _phn_number, 'gmail_id': _gmail_id, 'fb_id': _fb_id, 'applie_id': _applie_id, 'email': _email, 'phonepinID': _phonepinID, 'userShop': _userShop?.map((SubscriptionLogs? e) => e?.toJson()).toList(), 'Magazines_by': _Magazines_by?.map((SubscriptionLogs? e) => e?.toJson()).toList(), 'user_type': enumToString(_user_type), 'UserProductReviews': _UserProductReviews?.map((SubscriptionLogs? e) => e?.toJson()).toList(), 'UserShopReviews': _UserShopReviews?.map((SubscriptionLogs? e) => e?.toJson()).toList(), 'UserShopFavourites': _UserShopFavourites?.map((SubscriptionLogs? e) => e?.toJson()).toList(), 'current_language': _current_language, 'current_lat': _current_lat, 'isUserSecure': _isUserSecure, 'radiusPreference': _radiusPreference, 'saved_location': _saved_location, 'current_lon': _current_lon, 'managed_by': _managed_by, 'deleted_parent': _deleted_parent, 'AdvertisementBanners': _AdvertisementBanners?.map((SubscriptionLogs? e) => e?.toJson()).toList(), 'InvitedBy': _InvitedBy?.map((SubscriptionLogs? e) => e?.toJson()).toList(), 'city': _city, 'country': _country, 'status': enumToString(_status), 'BundlesUser': _BundlesUser?.map((SubscriptionLogs? e) => e?.toJson()).toList(), 'created_by': _created_by?.map((SubscriptionLogs? e) => e?.toJson()).toList(), 'user_subscription': _user_subscription?.map((SubscriptionLogs? e) => e?.toJson()).toList(), 'UserActivityLogs': _UserActivityLogs?.map((SubscriptionLogs? e) => e?.toJson()).toList(), 'BulkUploadFilesUsers': _BulkUploadFilesUsers?.map((SubscriptionLogs? e) => e?.toJson()).toList(), 'userDevices': _userDevices?.map((SubscriptionLogs? e) => e?.toJson()).toList(), 'MagazineShopCounts': _MagazineShopCounts?.map((SubscriptionLogs? e) => e?.toJson()).toList(), 'mag_subscription_left': _mag_subscription_left, 'shops_subscription_left': _shops_subscription_left
  };

  static final QueryField ID = QueryField(fieldName: "users.id");
  static final QueryField FULLNAME = QueryField(fieldName: "fullname");
  static final QueryField IMG_TOKEN = QueryField(fieldName: "img_token");
  static final QueryField PHN_NUMBER = QueryField(fieldName: "phn_number");
  static final QueryField GMAIL_ID = QueryField(fieldName: "gmail_id");
  static final QueryField FB_ID = QueryField(fieldName: "fb_id");
  static final QueryField APPLIE_ID = QueryField(fieldName: "applie_id");
  static final QueryField EMAIL = QueryField(fieldName: "email");
  static final QueryField PHONEPINID = QueryField(fieldName: "phonepinID");
  static final QueryField USERSHOP = QueryField(
    fieldName: "userShop",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (SubscriptionLogs).toString()));
  static final QueryField MAGAZINES_BY = QueryField(
    fieldName: "Magazines_by",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (SubscriptionLogs).toString()));
  static final QueryField USER_TYPE = QueryField(fieldName: "user_type");
  static final QueryField USERPRODUCTREVIEWS = QueryField(
    fieldName: "UserProductReviews",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (SubscriptionLogs).toString()));
  static final QueryField USERSHOPREVIEWS = QueryField(
    fieldName: "UserShopReviews",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (SubscriptionLogs).toString()));
  static final QueryField USERSHOPFAVOURITES = QueryField(
    fieldName: "UserShopFavourites",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (SubscriptionLogs).toString()));
  static final QueryField CURRENT_LANGUAGE = QueryField(fieldName: "current_language");
  static final QueryField CURRENT_LAT = QueryField(fieldName: "current_lat");
  static final QueryField ISUSERSECURE = QueryField(fieldName: "isUserSecure");
  static final QueryField RADIUSPREFERENCE = QueryField(fieldName: "radiusPreference");
  static final QueryField SAVED_LOCATION = QueryField(fieldName: "saved_location");
  static final QueryField CURRENT_LON = QueryField(fieldName: "current_lon");
  static final QueryField MANAGED_BY = QueryField(fieldName: "managed_by");
  static final QueryField DELETED_PARENT = QueryField(fieldName: "deleted_parent");
  static final QueryField ADVERTISEMENTBANNERS = QueryField(
    fieldName: "AdvertisementBanners",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (SubscriptionLogs).toString()));
  static final QueryField INVITEDBY = QueryField(
    fieldName: "InvitedBy",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (SubscriptionLogs).toString()));
  static final QueryField CITY = QueryField(fieldName: "city");
  static final QueryField COUNTRY = QueryField(fieldName: "country");
  static final QueryField STATUS = QueryField(fieldName: "status");
  static final QueryField BUNDLESUSER = QueryField(
    fieldName: "BundlesUser",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (SubscriptionLogs).toString()));
  static final QueryField CREATED_BY = QueryField(
    fieldName: "created_by",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (SubscriptionLogs).toString()));
  static final QueryField USER_SUBSCRIPTION = QueryField(
    fieldName: "user_subscription",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (SubscriptionLogs).toString()));
  static final QueryField USERACTIVITYLOGS = QueryField(
    fieldName: "UserActivityLogs",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (SubscriptionLogs).toString()));
  static final QueryField BULKUPLOADFILESUSERS = QueryField(
    fieldName: "BulkUploadFilesUsers",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (SubscriptionLogs).toString()));
  static final QueryField USERDEVICES = QueryField(
    fieldName: "userDevices",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (SubscriptionLogs).toString()));
  static final QueryField MAGAZINESHOPCOUNTS = QueryField(
    fieldName: "MagazineShopCounts",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (SubscriptionLogs).toString()));
  static final QueryField MAG_SUBSCRIPTION_LEFT = QueryField(fieldName: "mag_subscription_left");
  static final QueryField SHOPS_SUBSCRIPTION_LEFT = QueryField(fieldName: "shops_subscription_left");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Users";
    modelSchemaDefinition.pluralName = "Users";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.FULLNAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.IMG_TOKEN,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.PHN_NUMBER,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.GMAIL_ID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.FB_ID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.APPLIE_ID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.EMAIL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.PHONEPINID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Users.USERSHOP,
      isRequired: false,
      ofModelName: (SubscriptionLogs).toString(),
      associatedKey: SubscriptionLogs.USERSID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Users.MAGAZINES_BY,
      isRequired: false,
      ofModelName: (SubscriptionLogs).toString(),
      associatedKey: SubscriptionLogs.USERSID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.USER_TYPE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Users.USERPRODUCTREVIEWS,
      isRequired: false,
      ofModelName: (SubscriptionLogs).toString(),
      associatedKey: SubscriptionLogs.USERSID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Users.USERSHOPREVIEWS,
      isRequired: false,
      ofModelName: (SubscriptionLogs).toString(),
      associatedKey: SubscriptionLogs.USERSID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Users.USERSHOPFAVOURITES,
      isRequired: false,
      ofModelName: (SubscriptionLogs).toString(),
      associatedKey: SubscriptionLogs.USERSID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.CURRENT_LANGUAGE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.CURRENT_LAT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.ISUSERSECURE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.RADIUSPREFERENCE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.SAVED_LOCATION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.CURRENT_LON,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.MANAGED_BY,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.DELETED_PARENT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Users.ADVERTISEMENTBANNERS,
      isRequired: false,
      ofModelName: (SubscriptionLogs).toString(),
      associatedKey: SubscriptionLogs.USERSID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Users.INVITEDBY,
      isRequired: false,
      ofModelName: (SubscriptionLogs).toString(),
      associatedKey: SubscriptionLogs.USERSID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.CITY,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.COUNTRY,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.STATUS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Users.BUNDLESUSER,
      isRequired: false,
      ofModelName: (SubscriptionLogs).toString(),
      associatedKey: SubscriptionLogs.USERSID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Users.CREATED_BY,
      isRequired: false,
      ofModelName: (SubscriptionLogs).toString(),
      associatedKey: SubscriptionLogs.USERSID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Users.USER_SUBSCRIPTION,
      isRequired: false,
      ofModelName: (SubscriptionLogs).toString(),
      associatedKey: SubscriptionLogs.USERSID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Users.USERACTIVITYLOGS,
      isRequired: false,
      ofModelName: (SubscriptionLogs).toString(),
      associatedKey: SubscriptionLogs.USERSID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Users.BULKUPLOADFILESUSERS,
      isRequired: false,
      ofModelName: (SubscriptionLogs).toString(),
      associatedKey: SubscriptionLogs.USERSID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Users.USERDEVICES,
      isRequired: false,
      ofModelName: (SubscriptionLogs).toString(),
      associatedKey: SubscriptionLogs.USERSID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Users.MAGAZINESHOPCOUNTS,
      isRequired: false,
      ofModelName: (SubscriptionLogs).toString(),
      associatedKey: SubscriptionLogs.USERSID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.MAG_SUBSCRIPTION_LEFT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.SHOPS_SUBSCRIPTION_LEFT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
  });
}

class _UsersModelType extends ModelType<Users> {
  const _UsersModelType();
  
  @override
  Users fromJson(Map<String, dynamic> jsonData) {
    return Users.fromJson(jsonData);
  }
}