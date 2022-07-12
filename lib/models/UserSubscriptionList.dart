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


/** This is an auto generated class representing the UserSubscriptionList type in your schema. */
@immutable
class UserSubscriptionList extends Model {
  static const classType = const _UserSubscriptionListModelType();
  final String id;
  final String? _subscriptionplanID;
  final String? _usersID;
  final TemporalDateTime? _subscribed_at;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get subscriptionplanID {
    try {
      return _subscriptionplanID!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
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
  
  TemporalDateTime? get subscribed_at {
    return _subscribed_at;
  }
  
  const UserSubscriptionList._internal({required this.id, required subscriptionplanID, required usersID, subscribed_at}): _subscriptionplanID = subscriptionplanID, _usersID = usersID, _subscribed_at = subscribed_at;
  
  factory UserSubscriptionList({String? id, required String subscriptionplanID, required String usersID, TemporalDateTime? subscribed_at}) {
    return UserSubscriptionList._internal(
      id: id == null ? UUID.getUUID() : id,
      subscriptionplanID: subscriptionplanID,
      usersID: usersID,
      subscribed_at: subscribed_at);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserSubscriptionList &&
      id == other.id &&
      _subscriptionplanID == other._subscriptionplanID &&
      _usersID == other._usersID &&
      _subscribed_at == other._subscribed_at;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("UserSubscriptionList {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("subscriptionplanID=" + "$_subscriptionplanID" + ", ");
    buffer.write("usersID=" + "$_usersID" + ", ");
    buffer.write("subscribed_at=" + (_subscribed_at != null ? _subscribed_at!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  UserSubscriptionList copyWith({String? id, String? subscriptionplanID, String? usersID, TemporalDateTime? subscribed_at}) {
    return UserSubscriptionList(
      id: id ?? this.id,
      subscriptionplanID: subscriptionplanID ?? this.subscriptionplanID,
      usersID: usersID ?? this.usersID,
      subscribed_at: subscribed_at ?? this.subscribed_at);
  }
  
  UserSubscriptionList.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _subscriptionplanID = json['subscriptionplanID'],
      _usersID = json['usersID'],
      _subscribed_at = json['subscribed_at'] != null ? TemporalDateTime.fromString(json['subscribed_at']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'subscriptionplanID': _subscriptionplanID, 'usersID': _usersID, 'subscribed_at': _subscribed_at?.format()
  };

  static final QueryField ID = QueryField(fieldName: "userSubscriptionList.id");
  static final QueryField SUBSCRIPTIONPLANID = QueryField(fieldName: "subscriptionplanID");
  static final QueryField USERSID = QueryField(fieldName: "usersID");
  static final QueryField SUBSCRIBED_AT = QueryField(fieldName: "subscribed_at");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "UserSubscriptionList";
    modelSchemaDefinition.pluralName = "UserSubscriptionLists";
    
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
      key: UserSubscriptionList.SUBSCRIPTIONPLANID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserSubscriptionList.USERSID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserSubscriptionList.SUBSCRIBED_AT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _UserSubscriptionListModelType extends ModelType<UserSubscriptionList> {
  const _UserSubscriptionListModelType();
  
  @override
  UserSubscriptionList fromJson(Map<String, dynamic> jsonData) {
    return UserSubscriptionList.fromJson(jsonData);
  }
}