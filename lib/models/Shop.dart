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


/** This is an auto generated class representing the Shop type in your schema. */
@immutable
class Shop extends Model {
  static const classType = const _ShopModelType();
  final String id;
  final String? _name;
  final String? _phn_number;
  final List<String>? _img_token;
  final TemporalTime? _opening_time;
  final TemporalTime? _closing_time;
  final String? _about;
  final String? _phonepinID;
  final String? _usersID;
  final String? _shopcategoryID;
  final List<Product>? _ProductsShop;
  final List<UserShopReview>? _UserShopReviews;
  final double? _lon;
  final double? _lat;
  final String? _phy_address;
  final List<UserShopFavourite>? _UserShopFavourites;
  final String? _url;
  final double? _rating;
  final String? _manager;
  final TemporalDateTime? _license_renewed_on;
  final TemporalDateTime? _license_expiry_date;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get name {
    return _name;
  }
  
  String? get phn_number {
    return _phn_number;
  }
  
  List<String>? get img_token {
    return _img_token;
  }
  
  TemporalTime? get opening_time {
    return _opening_time;
  }
  
  TemporalTime? get closing_time {
    return _closing_time;
  }
  
  String? get about {
    return _about;
  }
  
  String? get phonepinID {
    return _phonepinID;
  }
  
  String? get usersID {
    return _usersID;
  }
  
  String? get shopcategoryID {
    return _shopcategoryID;
  }
  
  List<Product>? get ProductsShop {
    return _ProductsShop;
  }
  
  List<UserShopReview>? get UserShopReviews {
    return _UserShopReviews;
  }
  
  double? get lon {
    return _lon;
  }
  
  double? get lat {
    return _lat;
  }
  
  String? get phy_address {
    return _phy_address;
  }
  
  List<UserShopFavourite>? get UserShopFavourites {
    return _UserShopFavourites;
  }
  
  String? get url {
    return _url;
  }
  
  double? get rating {
    return _rating;
  }
  
  String? get manager {
    return _manager;
  }
  
  TemporalDateTime? get license_renewed_on {
    return _license_renewed_on;
  }
  
  TemporalDateTime? get license_expiry_date {
    return _license_expiry_date;
  }
  
  const Shop._internal({required this.id, name, phn_number, img_token, opening_time, closing_time, about, phonepinID, usersID, shopcategoryID, ProductsShop, UserShopReviews, lon, lat, phy_address, UserShopFavourites, url, rating, manager, license_renewed_on, license_expiry_date}): _name = name, _phn_number = phn_number, _img_token = img_token, _opening_time = opening_time, _closing_time = closing_time, _about = about, _phonepinID = phonepinID, _usersID = usersID, _shopcategoryID = shopcategoryID, _ProductsShop = ProductsShop, _UserShopReviews = UserShopReviews, _lon = lon, _lat = lat, _phy_address = phy_address, _UserShopFavourites = UserShopFavourites, _url = url, _rating = rating, _manager = manager, _license_renewed_on = license_renewed_on, _license_expiry_date = license_expiry_date;
  
  factory Shop({String? id, String? name, String? phn_number, List<String>? img_token, TemporalTime? opening_time, TemporalTime? closing_time, String? about, String? phonepinID, String? usersID, String? shopcategoryID, List<Product>? ProductsShop, List<UserShopReview>? UserShopReviews, double? lon, double? lat, String? phy_address, List<UserShopFavourite>? UserShopFavourites, String? url, double? rating, String? manager, TemporalDateTime? license_renewed_on, TemporalDateTime? license_expiry_date}) {
    return Shop._internal(
      id: id == null ? UUID.getUUID() : id,
      name: name,
      phn_number: phn_number,
      img_token: img_token != null ? List<String>.unmodifiable(img_token) : img_token,
      opening_time: opening_time,
      closing_time: closing_time,
      about: about,
      phonepinID: phonepinID,
      usersID: usersID,
      shopcategoryID: shopcategoryID,
      ProductsShop: ProductsShop != null ? List<Product>.unmodifiable(ProductsShop) : ProductsShop,
      UserShopReviews: UserShopReviews != null ? List<UserShopReview>.unmodifiable(UserShopReviews) : UserShopReviews,
      lon: lon,
      lat: lat,
      phy_address: phy_address,
      UserShopFavourites: UserShopFavourites != null ? List<UserShopFavourite>.unmodifiable(UserShopFavourites) : UserShopFavourites,
      url: url,
      rating: rating,
      manager: manager,
      license_renewed_on: license_renewed_on,
      license_expiry_date: license_expiry_date);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Shop &&
      id == other.id &&
      _name == other._name &&
      _phn_number == other._phn_number &&
      DeepCollectionEquality().equals(_img_token, other._img_token) &&
      _opening_time == other._opening_time &&
      _closing_time == other._closing_time &&
      _about == other._about &&
      _phonepinID == other._phonepinID &&
      _usersID == other._usersID &&
      _shopcategoryID == other._shopcategoryID &&
      DeepCollectionEquality().equals(_ProductsShop, other._ProductsShop) &&
      DeepCollectionEquality().equals(_UserShopReviews, other._UserShopReviews) &&
      _lon == other._lon &&
      _lat == other._lat &&
      _phy_address == other._phy_address &&
      DeepCollectionEquality().equals(_UserShopFavourites, other._UserShopFavourites) &&
      _url == other._url &&
      _rating == other._rating &&
      _manager == other._manager &&
      _license_renewed_on == other._license_renewed_on &&
      _license_expiry_date == other._license_expiry_date;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Shop {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("phn_number=" + "$_phn_number" + ", ");
    buffer.write("img_token=" + (_img_token != null ? _img_token!.toString() : "null") + ", ");
    buffer.write("opening_time=" + (_opening_time != null ? _opening_time!.format() : "null") + ", ");
    buffer.write("closing_time=" + (_closing_time != null ? _closing_time!.format() : "null") + ", ");
    buffer.write("about=" + "$_about" + ", ");
    buffer.write("phonepinID=" + "$_phonepinID" + ", ");
    buffer.write("usersID=" + "$_usersID" + ", ");
    buffer.write("shopcategoryID=" + "$_shopcategoryID" + ", ");
    buffer.write("lon=" + (_lon != null ? _lon!.toString() : "null") + ", ");
    buffer.write("lat=" + (_lat != null ? _lat!.toString() : "null") + ", ");
    buffer.write("phy_address=" + "$_phy_address" + ", ");
    buffer.write("url=" + "$_url" + ", ");
    buffer.write("rating=" + (_rating != null ? _rating!.toString() : "null") + ", ");
    buffer.write("manager=" + "$_manager" + ", ");
    buffer.write("license_renewed_on=" + (_license_renewed_on != null ? _license_renewed_on!.format() : "null") + ", ");
    buffer.write("license_expiry_date=" + (_license_expiry_date != null ? _license_expiry_date!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Shop copyWith({String? id, String? name, String? phn_number, List<String>? img_token, TemporalTime? opening_time, TemporalTime? closing_time, String? about, String? phonepinID, String? usersID, String? shopcategoryID, List<Product>? ProductsShop, List<UserShopReview>? UserShopReviews, double? lon, double? lat, String? phy_address, List<UserShopFavourite>? UserShopFavourites, String? url, double? rating, String? manager, TemporalDateTime? license_renewed_on, TemporalDateTime? license_expiry_date}) {
    return Shop(
      id: id ?? this.id,
      name: name ?? this.name,
      phn_number: phn_number ?? this.phn_number,
      img_token: img_token ?? this.img_token,
      opening_time: opening_time ?? this.opening_time,
      closing_time: closing_time ?? this.closing_time,
      about: about ?? this.about,
      phonepinID: phonepinID ?? this.phonepinID,
      usersID: usersID ?? this.usersID,
      shopcategoryID: shopcategoryID ?? this.shopcategoryID,
      ProductsShop: ProductsShop ?? this.ProductsShop,
      UserShopReviews: UserShopReviews ?? this.UserShopReviews,
      lon: lon ?? this.lon,
      lat: lat ?? this.lat,
      phy_address: phy_address ?? this.phy_address,
      UserShopFavourites: UserShopFavourites ?? this.UserShopFavourites,
      url: url ?? this.url,
      rating: rating ?? this.rating,
      manager: manager ?? this.manager,
      license_renewed_on: license_renewed_on ?? this.license_renewed_on,
      license_expiry_date: license_expiry_date ?? this.license_expiry_date);
  }
  
  Shop.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _phn_number = json['phn_number'],
      _img_token = json['img_token']?.cast<String>(),
      _opening_time = json['opening_time'] != null ? TemporalTime.fromString(json['opening_time']) : null,
      _closing_time = json['closing_time'] != null ? TemporalTime.fromString(json['closing_time']) : null,
      _about = json['about'],
      _phonepinID = json['phonepinID'],
      _usersID = json['usersID'],
      _shopcategoryID = json['shopcategoryID'],
      _ProductsShop = json['ProductsShop'] is List
        ? (json['ProductsShop'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Product.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _UserShopReviews = json['UserShopReviews'] is List
        ? (json['UserShopReviews'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => UserShopReview.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _lon = (json['lon'] as num?)?.toDouble(),
      _lat = (json['lat'] as num?)?.toDouble(),
      _phy_address = json['phy_address'],
      _UserShopFavourites = json['UserShopFavourites'] is List
        ? (json['UserShopFavourites'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => UserShopFavourite.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _url = json['url'],
      _rating = (json['rating'] as num?)?.toDouble(),
      _manager = json['manager'],
      _license_renewed_on = json['license_renewed_on'] != null ? TemporalDateTime.fromString(json['license_renewed_on']) : null,
      _license_expiry_date = json['license_expiry_date'] != null ? TemporalDateTime.fromString(json['license_expiry_date']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'phn_number': _phn_number, 'img_token': _img_token, 'opening_time': _opening_time?.format(), 'closing_time': _closing_time?.format(), 'about': _about, 'phonepinID': _phonepinID, 'usersID': _usersID, 'shopcategoryID': _shopcategoryID, 'ProductsShop': _ProductsShop?.map((Product? e) => e?.toJson()).toList(), 'UserShopReviews': _UserShopReviews?.map((UserShopReview? e) => e?.toJson()).toList(), 'lon': _lon, 'lat': _lat, 'phy_address': _phy_address, 'UserShopFavourites': _UserShopFavourites?.map((UserShopFavourite? e) => e?.toJson()).toList(), 'url': _url, 'rating': _rating, 'manager': _manager, 'license_renewed_on': _license_renewed_on?.format(), 'license_expiry_date': _license_expiry_date?.format()
  };

  static final QueryField ID = QueryField(fieldName: "shop.id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField PHN_NUMBER = QueryField(fieldName: "phn_number");
  static final QueryField IMG_TOKEN = QueryField(fieldName: "img_token");
  static final QueryField OPENING_TIME = QueryField(fieldName: "opening_time");
  static final QueryField CLOSING_TIME = QueryField(fieldName: "closing_time");
  static final QueryField ABOUT = QueryField(fieldName: "about");
  static final QueryField PHONEPINID = QueryField(fieldName: "phonepinID");
  static final QueryField USERSID = QueryField(fieldName: "usersID");
  static final QueryField SHOPCATEGORYID = QueryField(fieldName: "shopcategoryID");
  static final QueryField PRODUCTSSHOP = QueryField(
    fieldName: "ProductsShop",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Product).toString()));
  static final QueryField USERSHOPREVIEWS = QueryField(
    fieldName: "UserShopReviews",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (UserShopReview).toString()));
  static final QueryField LON = QueryField(fieldName: "lon");
  static final QueryField LAT = QueryField(fieldName: "lat");
  static final QueryField PHY_ADDRESS = QueryField(fieldName: "phy_address");
  static final QueryField USERSHOPFAVOURITES = QueryField(
    fieldName: "UserShopFavourites",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (UserShopFavourite).toString()));
  static final QueryField URL = QueryField(fieldName: "url");
  static final QueryField RATING = QueryField(fieldName: "rating");
  static final QueryField MANAGER = QueryField(fieldName: "manager");
  static final QueryField LICENSE_RENEWED_ON = QueryField(fieldName: "license_renewed_on");
  static final QueryField LICENSE_EXPIRY_DATE = QueryField(fieldName: "license_expiry_date");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Shop";
    modelSchemaDefinition.pluralName = "Shops";
    
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
      key: Shop.NAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Shop.PHN_NUMBER,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Shop.IMG_TOKEN,
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.collection, ofModelName: describeEnum(ModelFieldTypeEnum.string))
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Shop.OPENING_TIME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.time)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Shop.CLOSING_TIME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.time)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Shop.ABOUT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Shop.PHONEPINID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Shop.USERSID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Shop.SHOPCATEGORYID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Shop.PRODUCTSSHOP,
      isRequired: false,
      ofModelName: (Product).toString(),
      associatedKey: Product.SHOPID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Shop.USERSHOPREVIEWS,
      isRequired: false,
      ofModelName: (UserShopReview).toString(),
      associatedKey: UserShopReview.SHOPID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Shop.LON,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Shop.LAT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Shop.PHY_ADDRESS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Shop.USERSHOPFAVOURITES,
      isRequired: false,
      ofModelName: (UserShopFavourite).toString(),
      associatedKey: UserShopFavourite.SHOPID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Shop.URL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Shop.RATING,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Shop.MANAGER,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Shop.LICENSE_RENEWED_ON,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Shop.LICENSE_EXPIRY_DATE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _ShopModelType extends ModelType<Shop> {
  const _ShopModelType();
  
  @override
  Shop fromJson(Map<String, dynamic> jsonData) {
    return Shop.fromJson(jsonData);
  }
}