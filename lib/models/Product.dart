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


/** This is an auto generated class representing the Product type in your schema. */
@immutable
class Product extends Model {
  static const classType = const _ProductModelType();
  final String id;
  final String? _name;
  final double? _price;
  final String? _img_token;
  final ProductDealType? _deal_type;
  final ProductCategory? _product_category;
  final bool? _has_offer;
  final double? _discount;
  final String? _offer_title;
  final String? _offer_description;
  final bool? _is_available;
  final String? _shopID;
  final List<ProductImg>? _UserProductReviews;
  final String? _product_description;
  final TemporalDateTime? _created_on;
  final TemporalDateTime? _expires_on;
  final TemporalDateTime? _available_from;
  final String? _currency_type;
  final List<ProductImg>? _ProductImages;
  final TemporalDateTime? _start_date;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get name {
    return _name;
  }
  
  double? get price {
    return _price;
  }
  
  String? get img_token {
    return _img_token;
  }
  
  ProductDealType? get deal_type {
    return _deal_type;
  }
  
  ProductCategory? get product_category {
    return _product_category;
  }
  
  bool? get has_offer {
    return _has_offer;
  }
  
  double? get discount {
    return _discount;
  }
  
  String? get offer_title {
    return _offer_title;
  }
  
  String? get offer_description {
    return _offer_description;
  }
  
  bool? get is_available {
    return _is_available;
  }
  
  String? get shopID {
    return _shopID;
  }
  
  List<ProductImg>? get UserProductReviews {
    return _UserProductReviews;
  }
  
  String? get product_description {
    return _product_description;
  }
  
  TemporalDateTime? get created_on {
    return _created_on;
  }
  
  TemporalDateTime? get expires_on {
    return _expires_on;
  }
  
  TemporalDateTime? get available_from {
    return _available_from;
  }
  
  String? get currency_type {
    return _currency_type;
  }
  
  List<ProductImg>? get ProductImages {
    return _ProductImages;
  }
  
  TemporalDateTime? get start_date {
    return _start_date;
  }
  
  const Product._internal({required this.id, name, price, img_token, deal_type, product_category, has_offer, discount, offer_title, offer_description, is_available, shopID, UserProductReviews, product_description, created_on, expires_on, available_from, currency_type, ProductImages, start_date}): _name = name, _price = price, _img_token = img_token, _deal_type = deal_type, _product_category = product_category, _has_offer = has_offer, _discount = discount, _offer_title = offer_title, _offer_description = offer_description, _is_available = is_available, _shopID = shopID, _UserProductReviews = UserProductReviews, _product_description = product_description, _created_on = created_on, _expires_on = expires_on, _available_from = available_from, _currency_type = currency_type, _ProductImages = ProductImages, _start_date = start_date;
  
  factory Product({String? id, String? name, double? price, String? img_token, ProductDealType? deal_type, ProductCategory? product_category, bool? has_offer, double? discount, String? offer_title, String? offer_description, bool? is_available, String? shopID, List<ProductImg>? UserProductReviews, String? product_description, TemporalDateTime? created_on, TemporalDateTime? expires_on, TemporalDateTime? available_from, String? currency_type, List<ProductImg>? ProductImages, TemporalDateTime? start_date}) {
    return Product._internal(
      id: id == null ? UUID.getUUID() : id,
      name: name,
      price: price,
      img_token: img_token,
      deal_type: deal_type,
      product_category: product_category,
      has_offer: has_offer,
      discount: discount,
      offer_title: offer_title,
      offer_description: offer_description,
      is_available: is_available,
      shopID: shopID,
      UserProductReviews: UserProductReviews != null ? List<ProductImg>.unmodifiable(UserProductReviews) : UserProductReviews,
      product_description: product_description,
      created_on: created_on,
      expires_on: expires_on,
      available_from: available_from,
      currency_type: currency_type,
      ProductImages: ProductImages != null ? List<ProductImg>.unmodifiable(ProductImages) : ProductImages,
      start_date: start_date);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Product &&
      id == other.id &&
      _name == other._name &&
      _price == other._price &&
      _img_token == other._img_token &&
      _deal_type == other._deal_type &&
      _product_category == other._product_category &&
      _has_offer == other._has_offer &&
      _discount == other._discount &&
      _offer_title == other._offer_title &&
      _offer_description == other._offer_description &&
      _is_available == other._is_available &&
      _shopID == other._shopID &&
      DeepCollectionEquality().equals(_UserProductReviews, other._UserProductReviews) &&
      _product_description == other._product_description &&
      _created_on == other._created_on &&
      _expires_on == other._expires_on &&
      _available_from == other._available_from &&
      _currency_type == other._currency_type &&
      DeepCollectionEquality().equals(_ProductImages, other._ProductImages) &&
      _start_date == other._start_date;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Product {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("price=" + (_price != null ? _price!.toString() : "null") + ", ");
    buffer.write("img_token=" + "$_img_token" + ", ");
    buffer.write("deal_type=" + (_deal_type != null ? enumToString(_deal_type)! : "null") + ", ");
    buffer.write("product_category=" + (_product_category != null ? enumToString(_product_category)! : "null") + ", ");
    buffer.write("has_offer=" + (_has_offer != null ? _has_offer!.toString() : "null") + ", ");
    buffer.write("discount=" + (_discount != null ? _discount!.toString() : "null") + ", ");
    buffer.write("offer_title=" + "$_offer_title" + ", ");
    buffer.write("offer_description=" + "$_offer_description" + ", ");
    buffer.write("is_available=" + (_is_available != null ? _is_available!.toString() : "null") + ", ");
    buffer.write("shopID=" + "$_shopID" + ", ");
    buffer.write("product_description=" + "$_product_description" + ", ");
    buffer.write("created_on=" + (_created_on != null ? _created_on!.format() : "null") + ", ");
    buffer.write("expires_on=" + (_expires_on != null ? _expires_on!.format() : "null") + ", ");
    buffer.write("available_from=" + (_available_from != null ? _available_from!.format() : "null") + ", ");
    buffer.write("currency_type=" + "$_currency_type" + ", ");
    buffer.write("start_date=" + (_start_date != null ? _start_date!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Product copyWith({String? id, String? name, double? price, String? img_token, ProductDealType? deal_type, ProductCategory? product_category, bool? has_offer, double? discount, String? offer_title, String? offer_description, bool? is_available, String? shopID, List<ProductImg>? UserProductReviews, String? product_description, TemporalDateTime? created_on, TemporalDateTime? expires_on, TemporalDateTime? available_from, String? currency_type, List<ProductImg>? ProductImages, TemporalDateTime? start_date}) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      img_token: img_token ?? this.img_token,
      deal_type: deal_type ?? this.deal_type,
      product_category: product_category ?? this.product_category,
      has_offer: has_offer ?? this.has_offer,
      discount: discount ?? this.discount,
      offer_title: offer_title ?? this.offer_title,
      offer_description: offer_description ?? this.offer_description,
      is_available: is_available ?? this.is_available,
      shopID: shopID ?? this.shopID,
      UserProductReviews: UserProductReviews ?? this.UserProductReviews,
      product_description: product_description ?? this.product_description,
      created_on: created_on ?? this.created_on,
      expires_on: expires_on ?? this.expires_on,
      available_from: available_from ?? this.available_from,
      currency_type: currency_type ?? this.currency_type,
      ProductImages: ProductImages ?? this.ProductImages,
      start_date: start_date ?? this.start_date);
  }
  
  Product.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _price = (json['price'] as num?)?.toDouble(),
      _img_token = json['img_token'],
      _deal_type = enumFromString<ProductDealType>(json['deal_type'], ProductDealType.values),
      _product_category = enumFromString<ProductCategory>(json['product_category'], ProductCategory.values),
      _has_offer = json['has_offer'],
      _discount = (json['discount'] as num?)?.toDouble(),
      _offer_title = json['offer_title'],
      _offer_description = json['offer_description'],
      _is_available = json['is_available'],
      _shopID = json['shopID'],
      _UserProductReviews = json['UserProductReviews'] is List
        ? (json['UserProductReviews'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => ProductImg.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _product_description = json['product_description'],
      _created_on = json['created_on'] != null ? TemporalDateTime.fromString(json['created_on']) : null,
      _expires_on = json['expires_on'] != null ? TemporalDateTime.fromString(json['expires_on']) : null,
      _available_from = json['available_from'] != null ? TemporalDateTime.fromString(json['available_from']) : null,
      _currency_type = json['currency_type'],
      _ProductImages = json['ProductImages'] is List
        ? (json['ProductImages'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => ProductImg.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _start_date = json['start_date'] != null ? TemporalDateTime.fromString(json['start_date']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'price': _price, 'img_token': _img_token, 'deal_type': enumToString(_deal_type), 'product_category': enumToString(_product_category), 'has_offer': _has_offer, 'discount': _discount, 'offer_title': _offer_title, 'offer_description': _offer_description, 'is_available': _is_available, 'shopID': _shopID, 'UserProductReviews': _UserProductReviews?.map((ProductImg? e) => e?.toJson()).toList(), 'product_description': _product_description, 'created_on': _created_on?.format(), 'expires_on': _expires_on?.format(), 'available_from': _available_from?.format(), 'currency_type': _currency_type, 'ProductImages': _ProductImages?.map((ProductImg? e) => e?.toJson()).toList(), 'start_date': _start_date?.format()
  };

  static final QueryField ID = QueryField(fieldName: "product.id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField PRICE = QueryField(fieldName: "price");
  static final QueryField IMG_TOKEN = QueryField(fieldName: "img_token");
  static final QueryField DEAL_TYPE = QueryField(fieldName: "deal_type");
  static final QueryField PRODUCT_CATEGORY = QueryField(fieldName: "product_category");
  static final QueryField HAS_OFFER = QueryField(fieldName: "has_offer");
  static final QueryField DISCOUNT = QueryField(fieldName: "discount");
  static final QueryField OFFER_TITLE = QueryField(fieldName: "offer_title");
  static final QueryField OFFER_DESCRIPTION = QueryField(fieldName: "offer_description");
  static final QueryField IS_AVAILABLE = QueryField(fieldName: "is_available");
  static final QueryField SHOPID = QueryField(fieldName: "shopID");
  static final QueryField USERPRODUCTREVIEWS = QueryField(
    fieldName: "UserProductReviews",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (ProductImg).toString()));
  static final QueryField PRODUCT_DESCRIPTION = QueryField(fieldName: "product_description");
  static final QueryField CREATED_ON = QueryField(fieldName: "created_on");
  static final QueryField EXPIRES_ON = QueryField(fieldName: "expires_on");
  static final QueryField AVAILABLE_FROM = QueryField(fieldName: "available_from");
  static final QueryField CURRENCY_TYPE = QueryField(fieldName: "currency_type");
  static final QueryField PRODUCTIMAGES = QueryField(
    fieldName: "ProductImages",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (ProductImg).toString()));
  static final QueryField START_DATE = QueryField(fieldName: "start_date");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Product";
    modelSchemaDefinition.pluralName = "Products";
    
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
      key: Product.NAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Product.PRICE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Product.IMG_TOKEN,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Product.DEAL_TYPE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Product.PRODUCT_CATEGORY,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Product.HAS_OFFER,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Product.DISCOUNT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Product.OFFER_TITLE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Product.OFFER_DESCRIPTION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Product.IS_AVAILABLE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Product.SHOPID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Product.USERPRODUCTREVIEWS,
      isRequired: false,
      ofModelName: (ProductImg).toString(),
      associatedKey: ProductImg.PRODUCTID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Product.PRODUCT_DESCRIPTION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Product.CREATED_ON,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Product.EXPIRES_ON,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Product.AVAILABLE_FROM,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Product.CURRENCY_TYPE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Product.PRODUCTIMAGES,
      isRequired: false,
      ofModelName: (ProductImg).toString(),
      associatedKey: ProductImg.PRODUCTID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Product.START_DATE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _ProductModelType extends ModelType<Product> {
  const _ProductModelType();
  
  @override
  Product fromJson(Map<String, dynamic> jsonData) {
    return Product.fromJson(jsonData);
  }
}