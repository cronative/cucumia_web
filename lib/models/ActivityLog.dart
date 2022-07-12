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


/** This is an auto generated class representing the ActivityLog type in your schema. */
@immutable
class ActivityLog extends Model {
  static const classType = const _ActivityLogModelType();
  final String id;
  final TemporalDateTime? _datetime;
  final String? _actio;
  final String? _usersID;
  final String? _brief_discription;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  TemporalDateTime? get datetime {
    return _datetime;
  }
  
  String? get actio {
    return _actio;
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
  
  String? get brief_discription {
    return _brief_discription;
  }
  
  const ActivityLog._internal({required this.id, datetime, actio, required usersID, brief_discription}): _datetime = datetime, _actio = actio, _usersID = usersID, _brief_discription = brief_discription;
  
  factory ActivityLog({String? id, TemporalDateTime? datetime, String? actio, required String usersID, String? brief_discription}) {
    return ActivityLog._internal(
      id: id == null ? UUID.getUUID() : id,
      datetime: datetime,
      actio: actio,
      usersID: usersID,
      brief_discription: brief_discription);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActivityLog &&
      id == other.id &&
      _datetime == other._datetime &&
      _actio == other._actio &&
      _usersID == other._usersID &&
      _brief_discription == other._brief_discription;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ActivityLog {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("datetime=" + (_datetime != null ? _datetime!.format() : "null") + ", ");
    buffer.write("actio=" + "$_actio" + ", ");
    buffer.write("usersID=" + "$_usersID" + ", ");
    buffer.write("brief_discription=" + "$_brief_discription");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ActivityLog copyWith({String? id, TemporalDateTime? datetime, String? actio, String? usersID, String? brief_discription}) {
    return ActivityLog(
      id: id ?? this.id,
      datetime: datetime ?? this.datetime,
      actio: actio ?? this.actio,
      usersID: usersID ?? this.usersID,
      brief_discription: brief_discription ?? this.brief_discription);
  }
  
  ActivityLog.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _datetime = json['datetime'] != null ? TemporalDateTime.fromString(json['datetime']) : null,
      _actio = json['actio'],
      _usersID = json['usersID'],
      _brief_discription = json['brief_discription'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'datetime': _datetime?.format(), 'actio': _actio, 'usersID': _usersID, 'brief_discription': _brief_discription
  };

  static final QueryField ID = QueryField(fieldName: "activityLog.id");
  static final QueryField DATETIME = QueryField(fieldName: "datetime");
  static final QueryField ACTIO = QueryField(fieldName: "actio");
  static final QueryField USERSID = QueryField(fieldName: "usersID");
  static final QueryField BRIEF_DISCRIPTION = QueryField(fieldName: "brief_discription");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ActivityLog";
    modelSchemaDefinition.pluralName = "ActivityLogs";
    
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
      key: ActivityLog.DATETIME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ActivityLog.ACTIO,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ActivityLog.USERSID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ActivityLog.BRIEF_DISCRIPTION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _ActivityLogModelType extends ModelType<ActivityLog> {
  const _ActivityLogModelType();
  
  @override
  ActivityLog fromJson(Map<String, dynamic> jsonData) {
    return ActivityLog.fromJson(jsonData);
  }
}