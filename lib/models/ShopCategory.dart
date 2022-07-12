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


/** This is an auto generated class representing the ShopCategory type in your schema. */
@immutable
class ShopCategory extends Model {
  static const classType = const _ShopCategoryModelType();
  final String id;
  final String? _category_name;
  final String? _image_token;
  final List<Shop>? _ShopsCategory;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get category_name {
    return _category_name;
  }
  
  String? get image_token {
    return _image_token;
  }
  
  List<Shop>? get ShopsCategory {
    return _ShopsCategory;
  }
  
  const ShopCategory._internal({required this.id, category_name, image_token, ShopsCategory}): _category_name = category_name, _image_token = image_token, _ShopsCategory = ShopsCategory;
  
  factory ShopCategory({String? id, String? category_name, String? image_token, List<Shop>? ShopsCategory}) {
    return ShopCategory._internal(
      id: id == null ? UUID.getUUID() : id,
      category_name: category_name,
      image_token: image_token,
      ShopsCategory: ShopsCategory != null ? List<Shop>.unmodifiable(ShopsCategory) : ShopsCategory);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShopCategory &&
      id == other.id &&
      _category_name == other._category_name &&
      _image_token == other._image_token &&
      DeepCollectionEquality().equals(_ShopsCategory, other._ShopsCategory);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ShopCategory {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("category_name=" + "$_category_name" + ", ");
    buffer.write("image_token=" + "$_image_token");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ShopCategory copyWith({String? id, String? category_name, String? image_token, List<Shop>? ShopsCategory}) {
    return ShopCategory(
      id: id ?? this.id,
      category_name: category_name ?? this.category_name,
      image_token: image_token ?? this.image_token,
      ShopsCategory: ShopsCategory ?? this.ShopsCategory);
  }
  
  ShopCategory.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _category_name = json['category_name'],
      _image_token = json['image_token'],
      _ShopsCategory = json['ShopsCategory'] is List
        ? (json['ShopsCategory'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Shop.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'category_name': _category_name, 'image_token': _image_token, 'ShopsCategory': _ShopsCategory?.map((Shop? e) => e?.toJson()).toList()
  };

  static final QueryField ID = QueryField(fieldName: "shopCategory.id");
  static final QueryField CATEGORY_NAME = QueryField(fieldName: "category_name");
  static final QueryField IMAGE_TOKEN = QueryField(fieldName: "image_token");
  static final QueryField SHOPSCATEGORY = QueryField(
    fieldName: "ShopsCategory",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Shop).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ShopCategory";
    modelSchemaDefinition.pluralName = "ShopCategories";
    
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
      key: ShopCategory.CATEGORY_NAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ShopCategory.IMAGE_TOKEN,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: ShopCategory.SHOPSCATEGORY,
      isRequired: false,
      ofModelName: (Shop).toString(),
      associatedKey: Shop.SHOPCATEGORYID
    ));
  });
}

class _ShopCategoryModelType extends ModelType<ShopCategory> {
  const _ShopCategoryModelType();
  
  @override
  ShopCategory fromJson(Map<String, dynamic> jsonData) {
    return ShopCategory.fromJson(jsonData);
  }
}