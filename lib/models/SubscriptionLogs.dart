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


/** This is an auto generated class representing the SubscriptionLogs type in your schema. */
@immutable
class SubscriptionLogs extends Model {
  static const classType = const _SubscriptionLogsModelType();
  final String id;
  final int? _shop_count;
  final int? _mag_count;
  final String? _usersID;
  final double? _price;
  final TemporalDateTime? _purchase_date;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  int? get shop_count {
    return _shop_count;
  }
  
  int? get mag_count {
    return _mag_count;
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
  
  double? get price {
    return _price;
  }
  
  TemporalDateTime? get purchase_date {
    return _purchase_date;
  }
  
  const SubscriptionLogs._internal({required this.id, shop_count, mag_count, required usersID, price, purchase_date}): _shop_count = shop_count, _mag_count = mag_count, _usersID = usersID, _price = price, _purchase_date = purchase_date;
  
  factory SubscriptionLogs({String? id, int? shop_count, int? mag_count, required String usersID, double? price, TemporalDateTime? purchase_date}) {
    return SubscriptionLogs._internal(
      id: id == null ? UUID.getUUID() : id,
      shop_count: shop_count,
      mag_count: mag_count,
      usersID: usersID,
      price: price,
      purchase_date: purchase_date);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubscriptionLogs &&
      id == other.id &&
      _shop_count == other._shop_count &&
      _mag_count == other._mag_count &&
      _usersID == other._usersID &&
      _price == other._price &&
      _purchase_date == other._purchase_date;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("SubscriptionLogs {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("shop_count=" + (_shop_count != null ? _shop_count!.toString() : "null") + ", ");
    buffer.write("mag_count=" + (_mag_count != null ? _mag_count!.toString() : "null") + ", ");
    buffer.write("usersID=" + "$_usersID" + ", ");
    buffer.write("price=" + (_price != null ? _price!.toString() : "null") + ", ");
    buffer.write("purchase_date=" + (_purchase_date != null ? _purchase_date!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  SubscriptionLogs copyWith({String? id, int? shop_count, int? mag_count, String? usersID, double? price, TemporalDateTime? purchase_date}) {
    return SubscriptionLogs(
      id: id ?? this.id,
      shop_count: shop_count ?? this.shop_count,
      mag_count: mag_count ?? this.mag_count,
      usersID: usersID ?? this.usersID,
      price: price ?? this.price,
      purchase_date: purchase_date ?? this.purchase_date);
  }
  
  SubscriptionLogs.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _shop_count = (json['shop_count'] as num?)?.toInt(),
      _mag_count = (json['mag_count'] as num?)?.toInt(),
      _usersID = json['usersID'],
      _price = (json['price'] as num?)?.toDouble(),
      _purchase_date = json['purchase_date'] != null ? TemporalDateTime.fromString(json['purchase_date']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'shop_count': _shop_count, 'mag_count': _mag_count, 'usersID': _usersID, 'price': _price, 'purchase_date': _purchase_date?.format()
  };

  static final QueryField ID = QueryField(fieldName: "subscriptionLogs.id");
  static final QueryField SHOP_COUNT = QueryField(fieldName: "shop_count");
  static final QueryField MAG_COUNT = QueryField(fieldName: "mag_count");
  static final QueryField USERSID = QueryField(fieldName: "usersID");
  static final QueryField PRICE = QueryField(fieldName: "price");
  static final QueryField PURCHASE_DATE = QueryField(fieldName: "purchase_date");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "SubscriptionLogs";
    modelSchemaDefinition.pluralName = "SubscriptionLogs";
    
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
      key: SubscriptionLogs.SHOP_COUNT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: SubscriptionLogs.MAG_COUNT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: SubscriptionLogs.USERSID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: SubscriptionLogs.PRICE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: SubscriptionLogs.PURCHASE_DATE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _SubscriptionLogsModelType extends ModelType<SubscriptionLogs> {
  const _SubscriptionLogsModelType();
  
  @override
  SubscriptionLogs fromJson(Map<String, dynamic> jsonData) {
    return SubscriptionLogs.fromJson(jsonData);
  }
}