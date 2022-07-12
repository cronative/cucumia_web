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


/** This is an auto generated class representing the BulkUploadFiles type in your schema. */
@immutable
class BulkUploadFiles extends Model {
  static const classType = const _BulkUploadFilesModelType();
  final String id;
  final String? _filename;
  final String? _bucketname;
  final UploadingStat? _status;
  final String? _usersID;
  final TemporalDateTime? _uploaded_at;
  final bool? _verified;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get filename {
    return _filename;
  }
  
  String? get bucketname {
    return _bucketname;
  }
  
  UploadingStat? get status {
    return _status;
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
  
  TemporalDateTime? get uploaded_at {
    return _uploaded_at;
  }
  
  bool? get verified {
    return _verified;
  }
  
  const BulkUploadFiles._internal({required this.id, filename, bucketname, status, required usersID, uploaded_at, verified}): _filename = filename, _bucketname = bucketname, _status = status, _usersID = usersID, _uploaded_at = uploaded_at, _verified = verified;
  
  factory BulkUploadFiles({String? id, String? filename, String? bucketname, UploadingStat? status, required String usersID, TemporalDateTime? uploaded_at, bool? verified}) {
    return BulkUploadFiles._internal(
      id: id == null ? UUID.getUUID() : id,
      filename: filename,
      bucketname: bucketname,
      status: status,
      usersID: usersID,
      uploaded_at: uploaded_at,
      verified: verified);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BulkUploadFiles &&
      id == other.id &&
      _filename == other._filename &&
      _bucketname == other._bucketname &&
      _status == other._status &&
      _usersID == other._usersID &&
      _uploaded_at == other._uploaded_at &&
      _verified == other._verified;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("BulkUploadFiles {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("filename=" + "$_filename" + ", ");
    buffer.write("bucketname=" + "$_bucketname" + ", ");
    buffer.write("status=" + (_status != null ? enumToString(_status)! : "null") + ", ");
    buffer.write("usersID=" + "$_usersID" + ", ");
    buffer.write("uploaded_at=" + (_uploaded_at != null ? _uploaded_at!.format() : "null") + ", ");
    buffer.write("verified=" + (_verified != null ? _verified!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  BulkUploadFiles copyWith({String? id, String? filename, String? bucketname, UploadingStat? status, String? usersID, TemporalDateTime? uploaded_at, bool? verified}) {
    return BulkUploadFiles(
      id: id ?? this.id,
      filename: filename ?? this.filename,
      bucketname: bucketname ?? this.bucketname,
      status: status ?? this.status,
      usersID: usersID ?? this.usersID,
      uploaded_at: uploaded_at ?? this.uploaded_at,
      verified: verified ?? this.verified);
  }
  
  BulkUploadFiles.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _filename = json['filename'],
      _bucketname = json['bucketname'],
      _status = enumFromString<UploadingStat>(json['status'], UploadingStat.values),
      _usersID = json['usersID'],
      _uploaded_at = json['uploaded_at'] != null ? TemporalDateTime.fromString(json['uploaded_at']) : null,
      _verified = json['verified'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'filename': _filename, 'bucketname': _bucketname, 'status': enumToString(_status), 'usersID': _usersID, 'uploaded_at': _uploaded_at?.format(), 'verified': _verified
  };

  static final QueryField ID = QueryField(fieldName: "bulkUploadFiles.id");
  static final QueryField FILENAME = QueryField(fieldName: "filename");
  static final QueryField BUCKETNAME = QueryField(fieldName: "bucketname");
  static final QueryField STATUS = QueryField(fieldName: "status");
  static final QueryField USERSID = QueryField(fieldName: "usersID");
  static final QueryField UPLOADED_AT = QueryField(fieldName: "uploaded_at");
  static final QueryField VERIFIED = QueryField(fieldName: "verified");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "BulkUploadFiles";
    modelSchemaDefinition.pluralName = "BulkUploadFiles";
    
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
      key: BulkUploadFiles.FILENAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: BulkUploadFiles.BUCKETNAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: BulkUploadFiles.STATUS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: BulkUploadFiles.USERSID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: BulkUploadFiles.UPLOADED_AT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: BulkUploadFiles.VERIFIED,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
  });
}

class _BulkUploadFilesModelType extends ModelType<BulkUploadFiles> {
  const _BulkUploadFilesModelType();
  
  @override
  BulkUploadFiles fromJson(Map<String, dynamic> jsonData) {
    return BulkUploadFiles.fromJson(jsonData);
  }
}