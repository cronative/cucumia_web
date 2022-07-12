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


/** This is an auto generated class representing the ProductionLogs type in your schema. */
@immutable
class ProductionLogs extends Model {
  static const classType = const _ProductionLogsModelType();
  final String id;
  final String? _userid;
  final String? _partof;
  final TemporalDateTime? _timestamp;
  final String? _logs;
  final bool? _resolved;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get userid {
    return _userid;
  }
  
  String? get partof {
    return _partof;
  }
  
  TemporalDateTime? get timestamp {
    return _timestamp;
  }
  
  String? get logs {
    return _logs;
  }
  
  bool? get resolved {
    return _resolved;
  }
  
  const ProductionLogs._internal({required this.id, userid, partof, timestamp, logs, resolved}): _userid = userid, _partof = partof, _timestamp = timestamp, _logs = logs, _resolved = resolved;
  
  factory ProductionLogs({String? id, String? userid, String? partof, TemporalDateTime? timestamp, String? logs, bool? resolved}) {
    return ProductionLogs._internal(
      id: id == null ? UUID.getUUID() : id,
      userid: userid,
      partof: partof,
      timestamp: timestamp,
      logs: logs,
      resolved: resolved);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductionLogs &&
      id == other.id &&
      _userid == other._userid &&
      _partof == other._partof &&
      _timestamp == other._timestamp &&
      _logs == other._logs &&
      _resolved == other._resolved;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ProductionLogs {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("userid=" + "$_userid" + ", ");
    buffer.write("partof=" + "$_partof" + ", ");
    buffer.write("timestamp=" + (_timestamp != null ? _timestamp!.format() : "null") + ", ");
    buffer.write("logs=" + "$_logs" + ", ");
    buffer.write("resolved=" + (_resolved != null ? _resolved!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ProductionLogs copyWith({String? id, String? userid, String? partof, TemporalDateTime? timestamp, String? logs, bool? resolved}) {
    return ProductionLogs(
      id: id ?? this.id,
      userid: userid ?? this.userid,
      partof: partof ?? this.partof,
      timestamp: timestamp ?? this.timestamp,
      logs: logs ?? this.logs,
      resolved: resolved ?? this.resolved);
  }
  
  ProductionLogs.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _userid = json['userid'],
      _partof = json['partof'],
      _timestamp = json['timestamp'] != null ? TemporalDateTime.fromString(json['timestamp']) : null,
      _logs = json['logs'],
      _resolved = json['resolved'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'userid': _userid, 'partof': _partof, 'timestamp': _timestamp?.format(), 'logs': _logs, 'resolved': _resolved
  };

  static final QueryField ID = QueryField(fieldName: "productionLogs.id");
  static final QueryField USERID = QueryField(fieldName: "userid");
  static final QueryField PARTOF = QueryField(fieldName: "partof");
  static final QueryField TIMESTAMP = QueryField(fieldName: "timestamp");
  static final QueryField LOGS = QueryField(fieldName: "logs");
  static final QueryField RESOLVED = QueryField(fieldName: "resolved");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ProductionLogs";
    modelSchemaDefinition.pluralName = "ProductionLogs";
    
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
      key: ProductionLogs.USERID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ProductionLogs.PARTOF,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ProductionLogs.TIMESTAMP,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ProductionLogs.LOGS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ProductionLogs.RESOLVED,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
  });
}

class _ProductionLogsModelType extends ModelType<ProductionLogs> {
  const _ProductionLogsModelType();
  
  @override
  ProductionLogs fromJson(Map<String, dynamic> jsonData) {
    return ProductionLogs.fromJson(jsonData);
  }
}