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


/** This is an auto generated class representing the UserShopFavourite type in your schema. */
@immutable
class UserShopFavourite extends Model {
  static const classType = const _UserShopFavouriteModelType();
  final String id;
  final String? _usersID;
  final String? _shopID;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get usersID {
    return _usersID;
  }
  
  String? get shopID {
    return _shopID;
  }
  
  const UserShopFavourite._internal({required this.id, usersID, shopID}): _usersID = usersID, _shopID = shopID;
  
  factory UserShopFavourite({String? id, String? usersID, String? shopID}) {
    return UserShopFavourite._internal(
      id: id == null ? UUID.getUUID() : id,
      usersID: usersID,
      shopID: shopID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserShopFavourite &&
      id == other.id &&
      _usersID == other._usersID &&
      _shopID == other._shopID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("UserShopFavourite {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("usersID=" + "$_usersID" + ", ");
    buffer.write("shopID=" + "$_shopID");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  UserShopFavourite copyWith({String? id, String? usersID, String? shopID}) {
    return UserShopFavourite(
      id: id ?? this.id,
      usersID: usersID ?? this.usersID,
      shopID: shopID ?? this.shopID);
  }
  
  UserShopFavourite.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _usersID = json['usersID'],
      _shopID = json['shopID'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'usersID': _usersID, 'shopID': _shopID
  };

  static final QueryField ID = QueryField(fieldName: "userShopFavourite.id");
  static final QueryField USERSID = QueryField(fieldName: "usersID");
  static final QueryField SHOPID = QueryField(fieldName: "shopID");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "UserShopFavourite";
    modelSchemaDefinition.pluralName = "UserShopFavourites";
    
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
      key: UserShopFavourite.USERSID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserShopFavourite.SHOPID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _UserShopFavouriteModelType extends ModelType<UserShopFavourite> {
  const _UserShopFavouriteModelType();
  
  @override
  UserShopFavourite fromJson(Map<String, dynamic> jsonData) {
    return UserShopFavourite.fromJson(jsonData);
  }
}