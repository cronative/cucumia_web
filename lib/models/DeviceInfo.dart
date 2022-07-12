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
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the DeviceInfo type in your schema. */
@immutable
class DeviceInfo extends Model {
  static const classType = const _DeviceInfoModelType();
  final String id;
  final String? _deviceToken;
  final String? _packageName;
  final String? _versionName;
  final String? _buildNumber;
  final String? _buildSignature;
  final List<String>? _topicSubscrib;
  final String? _endpointAddress;
  final String? _usersID;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get deviceToken {
    return _deviceToken;
  }
  
  String? get packageName {
    return _packageName;
  }
  
  String? get versionName {
    return _versionName;
  }
  
  String? get buildNumber {
    return _buildNumber;
  }
  
  String? get buildSignature {
    return _buildSignature;
  }
  
  List<String>? get topicSubscrib {
    return _topicSubscrib;
  }
  
  String? get endpointAddress {
    return _endpointAddress;
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
  
  const DeviceInfo._internal({required this.id, deviceToken, packageName, versionName, buildNumber, buildSignature, topicSubscrib, endpointAddress, required usersID}): _deviceToken = deviceToken, _packageName = packageName, _versionName = versionName, _buildNumber = buildNumber, _buildSignature = buildSignature, _topicSubscrib = topicSubscrib, _endpointAddress = endpointAddress, _usersID = usersID;
  
  factory DeviceInfo({String? id, String? deviceToken, String? packageName, String? versionName, String? buildNumber, String? buildSignature, List<String>? topicSubscrib, String? endpointAddress, required String usersID}) {
    return DeviceInfo._internal(
      id: id == null ? UUID.getUUID() : id,
      deviceToken: deviceToken,
      packageName: packageName,
      versionName: versionName,
      buildNumber: buildNumber,
      buildSignature: buildSignature,
      topicSubscrib: topicSubscrib != null ? List<String>.unmodifiable(topicSubscrib) : topicSubscrib,
      endpointAddress: endpointAddress,
      usersID: usersID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviceInfo &&
      id == other.id &&
      _deviceToken == other._deviceToken &&
      _packageName == other._packageName &&
      _versionName == other._versionName &&
      _buildNumber == other._buildNumber &&
      _buildSignature == other._buildSignature &&
      DeepCollectionEquality().equals(_topicSubscrib, other._topicSubscrib) &&
      _endpointAddress == other._endpointAddress &&
      _usersID == other._usersID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("DeviceInfo {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("deviceToken=" + "$_deviceToken" + ", ");
    buffer.write("packageName=" + "$_packageName" + ", ");
    buffer.write("versionName=" + "$_versionName" + ", ");
    buffer.write("buildNumber=" + "$_buildNumber" + ", ");
    buffer.write("buildSignature=" + "$_buildSignature" + ", ");
    buffer.write("topicSubscrib=" + (_topicSubscrib != null ? _topicSubscrib!.toString() : "null") + ", ");
    buffer.write("endpointAddress=" + "$_endpointAddress" + ", ");
    buffer.write("usersID=" + "$_usersID");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  DeviceInfo copyWith({String? id, String? deviceToken, String? packageName, String? versionName, String? buildNumber, String? buildSignature, List<String>? topicSubscrib, String? endpointAddress, String? usersID}) {
    return DeviceInfo(
      id: id ?? this.id,
      deviceToken: deviceToken ?? this.deviceToken,
      packageName: packageName ?? this.packageName,
      versionName: versionName ?? this.versionName,
      buildNumber: buildNumber ?? this.buildNumber,
      buildSignature: buildSignature ?? this.buildSignature,
      topicSubscrib: topicSubscrib ?? this.topicSubscrib,
      endpointAddress: endpointAddress ?? this.endpointAddress,
      usersID: usersID ?? this.usersID);
  }
  
  DeviceInfo.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _deviceToken = json['deviceToken'],
      _packageName = json['packageName'],
      _versionName = json['versionName'],
      _buildNumber = json['buildNumber'],
      _buildSignature = json['buildSignature'],
      _topicSubscrib = json['topicSubscrib']?.cast<String>(),
      _endpointAddress = json['endpointAddress'],
      _usersID = json['usersID'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'deviceToken': _deviceToken, 'packageName': _packageName, 'versionName': _versionName, 'buildNumber': _buildNumber, 'buildSignature': _buildSignature, 'topicSubscrib': _topicSubscrib, 'endpointAddress': _endpointAddress, 'usersID': _usersID
  };

  static final QueryField ID = QueryField(fieldName: "deviceInfo.id");
  static final QueryField DEVICETOKEN = QueryField(fieldName: "deviceToken");
  static final QueryField PACKAGENAME = QueryField(fieldName: "packageName");
  static final QueryField VERSIONNAME = QueryField(fieldName: "versionName");
  static final QueryField BUILDNUMBER = QueryField(fieldName: "buildNumber");
  static final QueryField BUILDSIGNATURE = QueryField(fieldName: "buildSignature");
  static final QueryField TOPICSUBSCRIB = QueryField(fieldName: "topicSubscrib");
  static final QueryField ENDPOINTADDRESS = QueryField(fieldName: "endpointAddress");
  static final QueryField USERSID = QueryField(fieldName: "usersID");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "DeviceInfo";
    modelSchemaDefinition.pluralName = "DeviceInfos";
    
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
      key: DeviceInfo.DEVICETOKEN,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: DeviceInfo.PACKAGENAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: DeviceInfo.VERSIONNAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: DeviceInfo.BUILDNUMBER,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: DeviceInfo.BUILDSIGNATURE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: DeviceInfo.TOPICSUBSCRIB,
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.collection, ofModelName: describeEnum(ModelFieldTypeEnum.string))
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: DeviceInfo.ENDPOINTADDRESS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: DeviceInfo.USERSID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _DeviceInfoModelType extends ModelType<DeviceInfo> {
  const _DeviceInfoModelType();
  
  @override
  DeviceInfo fromJson(Map<String, dynamic> jsonData) {
    return DeviceInfo.fromJson(jsonData);
  }
}