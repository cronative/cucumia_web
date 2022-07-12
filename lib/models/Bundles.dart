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


/** This is an auto generated class representing the Bundles type in your schema. */
@immutable
class Bundles extends Model {
  static const classType = const _BundlesModelType();
  final String id;
  final String? _usersID;
  final String? _price;
  final List<String>? _bundle_img;
  final String? _thumbnail;
  final List<BundleProduct>? _BundleProd;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get usersID {
    try {
      return _usersID!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get price {
    return _price;
  }
  
  List<String>? get bundle_img {
    return _bundle_img;
  }
  
  String? get thumbnail {
    return _thumbnail;
  }
  
  List<BundleProduct>? get BundleProd {
    return _BundleProd;
  }
  
  const Bundles._internal({required this.id, required usersID, price, bundle_img, thumbnail, BundleProd}): _usersID = usersID, _price = price, _bundle_img = bundle_img, _thumbnail = thumbnail, _BundleProd = BundleProd;
  
  factory Bundles({String? id, required String usersID, String? price, List<String>? bundle_img, String? thumbnail, List<BundleProduct>? BundleProd}) {
    return Bundles._internal(
      id: id == null ? UUID.getUUID() : id,
      usersID: usersID,
      price: price,
      bundle_img: bundle_img != null ? List<String>.unmodifiable(bundle_img) : bundle_img,
      thumbnail: thumbnail,
      BundleProd: BundleProd != null ? List<BundleProduct>.unmodifiable(BundleProd) : BundleProd);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Bundles &&
      id == other.id &&
      _usersID == other._usersID &&
      _price == other._price &&
      DeepCollectionEquality().equals(_bundle_img, other._bundle_img) &&
      _thumbnail == other._thumbnail &&
      DeepCollectionEquality().equals(_BundleProd, other._BundleProd);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Bundles {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("usersID=" + "$_usersID" + ", ");
    buffer.write("price=" + "$_price" + ", ");
    buffer.write("bundle_img=" + (_bundle_img != null ? _bundle_img!.toString() : "null") + ", ");
    buffer.write("thumbnail=" + "$_thumbnail");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Bundles copyWith({String? id, String? usersID, String? price, List<String>? bundle_img, String? thumbnail, List<BundleProduct>? BundleProd}) {
    return Bundles(
      id: id ?? this.id,
      usersID: usersID ?? this.usersID,
      price: price ?? this.price,
      bundle_img: bundle_img ?? this.bundle_img,
      thumbnail: thumbnail ?? this.thumbnail,
      BundleProd: BundleProd ?? this.BundleProd);
  }
  
  Bundles.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _usersID = json['usersID'],
      _price = json['price'],
      _bundle_img = json['bundle_img']?.cast<String>(),
      _thumbnail = json['thumbnail'],
      _BundleProd = json['BundleProd'] is List
        ? (json['BundleProd'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => BundleProduct.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'usersID': _usersID, 'price': _price, 'bundle_img': _bundle_img, 'thumbnail': _thumbnail, 'BundleProd': _BundleProd?.map((BundleProduct? e) => e?.toJson()).toList()
  };

  static final QueryField ID = QueryField(fieldName: "bundles.id");
  static final QueryField USERSID = QueryField(fieldName: "usersID");
  static final QueryField PRICE = QueryField(fieldName: "price");
  static final QueryField BUNDLE_IMG = QueryField(fieldName: "bundle_img");
  static final QueryField THUMBNAIL = QueryField(fieldName: "thumbnail");
  static final QueryField BUNDLEPROD = QueryField(
    fieldName: "BundleProd",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (BundleProduct).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Bundles";
    modelSchemaDefinition.pluralName = "Bundles";
    
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
      key: Bundles.USERSID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Bundles.PRICE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Bundles.BUNDLE_IMG,
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.collection, ofModelName: describeEnum(ModelFieldTypeEnum.string))
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Bundles.THUMBNAIL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Bundles.BUNDLEPROD,
      isRequired: false,
      ofModelName: (BundleProduct).toString(),
      associatedKey: BundleProduct.BUNDLESID
    ));
  });
}

class _BundlesModelType extends ModelType<Bundles> {
  const _BundlesModelType();
  
  @override
  Bundles fromJson(Map<String, dynamic> jsonData) {
    return Bundles.fromJson(jsonData);
  }
}