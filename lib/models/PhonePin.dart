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


/** This is an auto generated class representing the PhonePin type in your schema. */
@immutable
class PhonePin extends Model {
  static const classType = const _PhonePinModelType();
  final String id;
  final String? _country_name;
  final String? _abbr;
  final String? _pin;
  final List<Users>? _UsersPhnPin;
  final List<Shop>? _ShopPhonePin;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get country_name {
    return _country_name;
  }
  
  String? get abbr {
    return _abbr;
  }
  
  String? get pin {
    return _pin;
  }
  
  List<Users>? get UsersPhnPin {
    return _UsersPhnPin;
  }
  
  List<Shop>? get ShopPhonePin {
    return _ShopPhonePin;
  }
  
  const PhonePin._internal({required this.id, country_name, abbr, pin, UsersPhnPin, ShopPhonePin}): _country_name = country_name, _abbr = abbr, _pin = pin, _UsersPhnPin = UsersPhnPin, _ShopPhonePin = ShopPhonePin;
  
  factory PhonePin({String? id, String? country_name, String? abbr, String? pin, List<Users>? UsersPhnPin, List<Shop>? ShopPhonePin}) {
    return PhonePin._internal(
      id: id == null ? UUID.getUUID() : id,
      country_name: country_name,
      abbr: abbr,
      pin: pin,
      UsersPhnPin: UsersPhnPin != null ? List<Users>.unmodifiable(UsersPhnPin) : UsersPhnPin,
      ShopPhonePin: ShopPhonePin != null ? List<Shop>.unmodifiable(ShopPhonePin) : ShopPhonePin);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PhonePin &&
      id == other.id &&
      _country_name == other._country_name &&
      _abbr == other._abbr &&
      _pin == other._pin &&
      DeepCollectionEquality().equals(_UsersPhnPin, other._UsersPhnPin) &&
      DeepCollectionEquality().equals(_ShopPhonePin, other._ShopPhonePin);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("PhonePin {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("country_name=" + "$_country_name" + ", ");
    buffer.write("abbr=" + "$_abbr" + ", ");
    buffer.write("pin=" + "$_pin");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  PhonePin copyWith({String? id, String? country_name, String? abbr, String? pin, List<Users>? UsersPhnPin, List<Shop>? ShopPhonePin}) {
    return PhonePin(
      id: id ?? this.id,
      country_name: country_name ?? this.country_name,
      abbr: abbr ?? this.abbr,
      pin: pin ?? this.pin,
      UsersPhnPin: UsersPhnPin ?? this.UsersPhnPin,
      ShopPhonePin: ShopPhonePin ?? this.ShopPhonePin);
  }
  
  PhonePin.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _country_name = json['country_name'],
      _abbr = json['abbr'],
      _pin = json['pin'],
      _UsersPhnPin = json['UsersPhnPin'] is List
        ? (json['UsersPhnPin'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Users.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _ShopPhonePin = json['ShopPhonePin'] is List
        ? (json['ShopPhonePin'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Shop.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'country_name': _country_name, 'abbr': _abbr, 'pin': _pin, 'UsersPhnPin': _UsersPhnPin?.map((Users? e) => e?.toJson()).toList(), 'ShopPhonePin': _ShopPhonePin?.map((Shop? e) => e?.toJson()).toList()
  };

  static final QueryField ID = QueryField(fieldName: "phonePin.id");
  static final QueryField COUNTRY_NAME = QueryField(fieldName: "country_name");
  static final QueryField ABBR = QueryField(fieldName: "abbr");
  static final QueryField PIN = QueryField(fieldName: "pin");
  static final QueryField USERSPHNPIN = QueryField(
    fieldName: "UsersPhnPin",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Users).toString()));
  static final QueryField SHOPPHONEPIN = QueryField(
    fieldName: "ShopPhonePin",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Shop).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "PhonePin";
    modelSchemaDefinition.pluralName = "PhonePins";
    
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
      key: PhonePin.COUNTRY_NAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: PhonePin.ABBR,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: PhonePin.PIN,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: PhonePin.USERSPHNPIN,
      isRequired: false,
      ofModelName: (Users).toString(),
      associatedKey: Users.PHONEPINID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: PhonePin.SHOPPHONEPIN,
      isRequired: false,
      ofModelName: (Shop).toString(),
      associatedKey: Shop.PHONEPINID
    ));
  });
}

class _PhonePinModelType extends ModelType<PhonePin> {
  const _PhonePinModelType();
  
  @override
  PhonePin fromJson(Map<String, dynamic> jsonData) {
    return PhonePin.fromJson(jsonData);
  }
}