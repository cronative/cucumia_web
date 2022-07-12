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

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the ProductImg type in your schema. */
@immutable
class ProductImg extends Model {
  static const classType = const _ProductImgModelType();
  final String id;
  final String? _img_token;
  final String? _tags;
  final String? _productID;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get img_token {
    return _img_token;
  }
  
  String? get tags {
    return _tags;
  }
  
  String get productID {
    try {
      return _productID!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  const ProductImg._internal({required this.id, img_token, tags, required productID}): _img_token = img_token, _tags = tags, _productID = productID;
  
  factory ProductImg({String? id, String? img_token, String? tags, required String productID}) {
    return ProductImg._internal(
      id: id == null ? UUID.getUUID() : id,
      img_token: img_token,
      tags: tags,
      productID: productID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductImg &&
      id == other.id &&
      _img_token == other._img_token &&
      _tags == other._tags &&
      _productID == other._productID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ProductImg {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("img_token=" + "$_img_token" + ", ");
    buffer.write("tags=" + "$_tags" + ", ");
    buffer.write("productID=" + "$_productID");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ProductImg copyWith({String? id, String? img_token, String? tags, String? productID}) {
    return ProductImg(
      id: id ?? this.id,
      img_token: img_token ?? this.img_token,
      tags: tags ?? this.tags,
      productID: productID ?? this.productID);
  }
  
  ProductImg.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _img_token = json['img_token'],
      _tags = json['tags'],
      _productID = json['productID'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'img_token': _img_token, 'tags': _tags, 'productID': _productID
  };

  static final QueryField ID = QueryField(fieldName: "productImg.id");
  static final QueryField IMG_TOKEN = QueryField(fieldName: "img_token");
  static final QueryField TAGS = QueryField(fieldName: "tags");
  static final QueryField PRODUCTID = QueryField(fieldName: "productID");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ProductImg";
    modelSchemaDefinition.pluralName = "ProductImgs";
    
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
      key: ProductImg.IMG_TOKEN,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ProductImg.TAGS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ProductImg.PRODUCTID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _ProductImgModelType extends ModelType<ProductImg> {
  const _ProductImgModelType();
  
  @override
  ProductImg fromJson(Map<String, dynamic> jsonData) {
    return ProductImg.fromJson(jsonData);
  }
}