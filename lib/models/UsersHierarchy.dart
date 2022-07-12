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


/** This is an auto generated class representing the UsersHierarchy type in your schema. */
@immutable
class UsersHierarchy extends Model {
  static const classType = const _UsersHierarchyModelType();
  final String id;
  final String? _user_id;
  final String? _managed_by;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get user_id {
    return _user_id;
  }
  
  String? get managed_by {
    return _managed_by;
  }
  
  const UsersHierarchy._internal({required this.id, user_id, managed_by}): _user_id = user_id, _managed_by = managed_by;
  
  factory UsersHierarchy({String? id, String? user_id, String? managed_by}) {
    return UsersHierarchy._internal(
      id: id == null ? UUID.getUUID() : id,
      user_id: user_id,
      managed_by: managed_by);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersHierarchy &&
      id == other.id &&
      _user_id == other._user_id &&
      _managed_by == other._managed_by;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("UsersHierarchy {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("user_id=" + "$_user_id" + ", ");
    buffer.write("managed_by=" + "$_managed_by");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  UsersHierarchy copyWith({String? id, String? user_id, String? managed_by}) {
    return UsersHierarchy(
      id: id ?? this.id,
      user_id: user_id ?? this.user_id,
      managed_by: managed_by ?? this.managed_by);
  }
  
  UsersHierarchy.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _user_id = json['user_id'],
      _managed_by = json['managed_by'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'user_id': _user_id, 'managed_by': _managed_by
  };

  static final QueryField ID = QueryField(fieldName: "usersHierarchy.id");
  static final QueryField USER_ID = QueryField(fieldName: "user_id");
  static final QueryField MANAGED_BY = QueryField(fieldName: "managed_by");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "UsersHierarchy";
    modelSchemaDefinition.pluralName = "UsersHierarchies";
    
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
      key: UsersHierarchy.USER_ID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UsersHierarchy.MANAGED_BY,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _UsersHierarchyModelType extends ModelType<UsersHierarchy> {
  const _UsersHierarchyModelType();
  
  @override
  UsersHierarchy fromJson(Map<String, dynamic> jsonData) {
    return UsersHierarchy.fromJson(jsonData);
  }
}