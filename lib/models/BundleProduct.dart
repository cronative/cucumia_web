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
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the BundleProduct type in your schema. */
@immutable
class BundleProduct extends Model {
  static const classType = const _BundleProductModelType();
  final String id;
  final String? _bundlesID;
  final int? _quantity;
  final Product? _ProductBundle;
  final String? _bundleProductProductBundleId;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get bundlesID {
    try {
      return _bundlesID!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int? get quantity {
    return _quantity;
  }
  
  Product? get ProductBundle {
    return _ProductBundle;
  }
  
  String? get bundleProductProductBundleId {
    return _bundleProductProductBundleId;
  }
  
  const BundleProduct._internal({required this.id, required bundlesID, quantity, ProductBundle, bundleProductProductBundleId}): _bundlesID = bundlesID, _quantity = quantity, _ProductBundle = ProductBundle, _bundleProductProductBundleId = bundleProductProductBundleId;
  
  factory BundleProduct({String? id, required String bundlesID, int? quantity, Product? ProductBundle, String? bundleProductProductBundleId}) {
    return BundleProduct._internal(
      id: id == null ? UUID.getUUID() : id,
      bundlesID: bundlesID,
      quantity: quantity,
      ProductBundle: ProductBundle,
      bundleProductProductBundleId: bundleProductProductBundleId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BundleProduct &&
      id == other.id &&
      _bundlesID == other._bundlesID &&
      _quantity == other._quantity &&
      _ProductBundle == other._ProductBundle &&
      _bundleProductProductBundleId == other._bundleProductProductBundleId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("BundleProduct {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("bundlesID=" + "$_bundlesID" + ", ");
    buffer.write("quantity=" + (_quantity != null ? _quantity!.toString() : "null") + ", ");
    buffer.write("bundleProductProductBundleId=" + "$_bundleProductProductBundleId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  BundleProduct copyWith({String? id, String? bundlesID, int? quantity, Product? ProductBundle, String? bundleProductProductBundleId}) {
    return BundleProduct(
      id: id ?? this.id,
      bundlesID: bundlesID ?? this.bundlesID,
      quantity: quantity ?? this.quantity,
      ProductBundle: ProductBundle ?? this.ProductBundle,
      bundleProductProductBundleId: bundleProductProductBundleId ?? this.bundleProductProductBundleId);
  }
  
  BundleProduct.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _bundlesID = json['bundlesID'],
      _quantity = (json['quantity'] as num?)?.toInt(),
      _ProductBundle = json['ProductBundle']?['serializedData'] != null
        ? Product.fromJson(new Map<String, dynamic>.from(json['ProductBundle']['serializedData']))
        : null,
      _bundleProductProductBundleId = json['bundleProductProductBundleId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'bundlesID': _bundlesID, 'quantity': _quantity, 'ProductBundle': _ProductBundle?.toJson(), 'bundleProductProductBundleId': _bundleProductProductBundleId
  };

  static final QueryField ID = QueryField(fieldName: "bundleProduct.id");
  static final QueryField BUNDLESID = QueryField(fieldName: "bundlesID");
  static final QueryField QUANTITY = QueryField(fieldName: "quantity");
  static final QueryField PRODUCTBUNDLE = QueryField(
    fieldName: "ProductBundle",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Product).toString()));
  static final QueryField BUNDLEPRODUCTPRODUCTBUNDLEID = QueryField(fieldName: "bundleProductProductBundleId");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "BundleProduct";
    modelSchemaDefinition.pluralName = "BundleProducts";
    
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
      key: BundleProduct.BUNDLESID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: BundleProduct.QUANTITY,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
      key: BundleProduct.PRODUCTBUNDLE,
      isRequired: false,
      ofModelName: (Product).toString(),
      associatedKey: Product.ID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: BundleProduct.BUNDLEPRODUCTPRODUCTBUNDLEID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _BundleProductModelType extends ModelType<BundleProduct> {
  const _BundleProductModelType();
  
  @override
  BundleProduct fromJson(Map<String, dynamic> jsonData) {
    return BundleProduct.fromJson(jsonData);
  }
}