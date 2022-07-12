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

import 'package:cucumia_admin/models/UserSubscriptionList.dart';

import 'ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the SubscriptionPlan type in your schema. */
@immutable
class SubscriptionPlan extends Model {
  static const classType = const _SubscriptionPlanModelType();
  final String id;
  final int? _shops_count;
  final int? _magazines_count;
  final bool? _active_UAE;
  final double? _price_UAE;
  final bool? _active_denmark;
  final double? _price_denmark;
  final bool? _active_UK;
  final double? _price_UK;
  final bool? _active_norway;
  final double? _price_norway;
  final String? _usersID;
  final String? _plan_name;
  final String? _plan_title;
  final List<UserSubscriptionList>? _userplan;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  int? get shops_count {
    return _shops_count;
  }

  int? get magazines_count {
    return _magazines_count;
  }

  bool? get active_UAE {
    return _active_UAE;
  }

  double? get price_UAE {
    return _price_UAE;
  }

  bool? get active_denmark {
    return _active_denmark;
  }

  double? get price_denmark {
    return _price_denmark;
  }

  bool? get active_UK {
    return _active_UK;
  }

  double? get price_UK {
    return _price_UK;
  }

  bool? get active_norway {
    return _active_norway;
  }

  double? get price_norway {
    return _price_norway;
  }

  String get usersID {
    try {
      return _usersID!;
    } catch (e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }

  String? get plan_name {
    return _plan_name;
  }

  String? get plan_title {
    return _plan_title;
  }

  List<UserSubscriptionList>? get userplan {
    return _userplan;
  }

  const SubscriptionPlan._internal(
      {required this.id,
      shops_count,
      magazines_count,
      active_UAE,
      price_UAE,
      active_denmark,
      price_denmark,
      active_UK,
      price_UK,
      active_norway,
      price_norway,
      required usersID,
      plan_name,
      plan_title,
      userplan})
      : _shops_count = shops_count,
        _magazines_count = magazines_count,
        _active_UAE = active_UAE,
        _price_UAE = price_UAE,
        _active_denmark = active_denmark,
        _price_denmark = price_denmark,
        _active_UK = active_UK,
        _price_UK = price_UK,
        _active_norway = active_norway,
        _price_norway = price_norway,
        _usersID = usersID,
        _plan_name = plan_name,
        _plan_title = plan_title,
        _userplan = userplan;

  factory SubscriptionPlan(
      {String? id,
      int? shops_count,
      int? magazines_count,
      bool? active_UAE,
      double? price_UAE,
      bool? active_denmark,
      double? price_denmark,
      bool? active_UK,
      double? price_UK,
      bool? active_norway,
      double? price_norway,
      required String usersID,
      String? plan_name,
      String? plan_title,
      List<UserSubscriptionList>? userplan}) {
    return SubscriptionPlan._internal(
        id: id == null ? UUID.getUUID() : id,
        shops_count: shops_count,
        magazines_count: magazines_count,
        active_UAE: active_UAE,
        price_UAE: price_UAE,
        active_denmark: active_denmark,
        price_denmark: price_denmark,
        active_UK: active_UK,
        price_UK: price_UK,
        active_norway: active_norway,
        price_norway: price_norway,
        usersID: usersID,
        plan_name: plan_name,
        plan_title: plan_title,
        userplan: userplan != null ? List<UserSubscriptionList>.unmodifiable(userplan) : userplan);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubscriptionPlan &&
        id == other.id &&
        _shops_count == other._shops_count &&
        _magazines_count == other._magazines_count &&
        _active_UAE == other._active_UAE &&
        _price_UAE == other._price_UAE &&
        _active_denmark == other._active_denmark &&
        _price_denmark == other._price_denmark &&
        _active_UK == other._active_UK &&
        _price_UK == other._price_UK &&
        _active_norway == other._active_norway &&
        _price_norway == other._price_norway &&
        _usersID == other._usersID &&
        _plan_name == other._plan_name &&
        _plan_title == other._plan_title &&
        DeepCollectionEquality().equals(_userplan, other._userplan);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("SubscriptionPlan {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("shops_count=" + (_shops_count != null ? _shops_count!.toString() : "null") + ", ");
    buffer.write("magazines_count=" + (_magazines_count != null ? _magazines_count!.toString() : "null") + ", ");
    buffer.write("active_UAE=" + (_active_UAE != null ? _active_UAE!.toString() : "null") + ", ");
    buffer.write("price_UAE=" + (_price_UAE != null ? _price_UAE!.toString() : "null") + ", ");
    buffer.write("active_denmark=" + (_active_denmark != null ? _active_denmark!.toString() : "null") + ", ");
    buffer.write("price_denmark=" + (_price_denmark != null ? _price_denmark!.toString() : "null") + ", ");
    buffer.write("active_UK=" + (_active_UK != null ? _active_UK!.toString() : "null") + ", ");
    buffer.write("price_UK=" + (_price_UK != null ? _price_UK!.toString() : "null") + ", ");
    buffer.write("active_norway=" + (_active_norway != null ? _active_norway!.toString() : "null") + ", ");
    buffer.write("price_norway=" + (_price_norway != null ? _price_norway!.toString() : "null") + ", ");
    buffer.write("usersID=" + "$_usersID" + ", ");
    buffer.write("plan_name=" + "$_plan_name" + ", ");
    buffer.write("plan_title=" + "$_plan_title");
    buffer.write("}");

    return buffer.toString();
  }

  SubscriptionPlan copyWith(
      {String? id,
      int? shops_count,
      int? magazines_count,
      bool? active_UAE,
      double? price_UAE,
      bool? active_denmark,
      double? price_denmark,
      bool? active_UK,
      double? price_UK,
      bool? active_norway,
      double? price_norway,
      String? usersID,
      String? plan_name,
      String? plan_title,
      List<UserSubscriptionList>? userplan}) {
    return SubscriptionPlan(
        id: id ?? this.id,
        shops_count: shops_count ?? this.shops_count,
        magazines_count: magazines_count ?? this.magazines_count,
        active_UAE: active_UAE ?? this.active_UAE,
        price_UAE: price_UAE ?? this.price_UAE,
        active_denmark: active_denmark ?? this.active_denmark,
        price_denmark: price_denmark ?? this.price_denmark,
        active_UK: active_UK ?? this.active_UK,
        price_UK: price_UK ?? this.price_UK,
        active_norway: active_norway ?? this.active_norway,
        price_norway: price_norway ?? this.price_norway,
        usersID: usersID ?? this.usersID,
        plan_name: plan_name ?? this.plan_name,
        plan_title: plan_title ?? this.plan_title,
        userplan: userplan ?? this.userplan);
  }

  SubscriptionPlan.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _shops_count = (json['shops_count'] as num?)?.toInt(),
        _magazines_count = (json['magazines_count'] as num?)?.toInt(),
        _active_UAE = json['active_UAE'],
        _price_UAE = (json['price_UAE'] as num?)?.toDouble(),
        _active_denmark = json['active_denmark'],
        _price_denmark = (json['price_denmark'] as num?)?.toDouble(),
        _active_UK = json['active_UK'],
        _price_UK = (json['price_UK'] as num?)?.toDouble(),
        _active_norway = json['active_norway'],
        _price_norway = (json['price_norway'] as num?)?.toDouble(),
        _usersID = json['usersID'],
        _plan_name = json['plan_name'],
        _plan_title = json['plan_title'],
        _userplan = json['userplan'] is List
            ? (json['userplan'] as List)
                .where((e) => e?['serializedData'] != null)
                .map((e) => UserSubscriptionList.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
                .toList()
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'shops_count': _shops_count,
        'magazines_count': _magazines_count,
        'active_UAE': _active_UAE,
        'price_UAE': _price_UAE,
        'active_denmark': _active_denmark,
        'price_denmark': _price_denmark,
        'active_UK': _active_UK,
        'price_UK': _price_UK,
        'active_norway': _active_norway,
        'price_norway': _price_norway,
        'usersID': _usersID,
        'plan_name': _plan_name,
        'plan_title': _plan_title,
        'userplan': _userplan?.map((UserSubscriptionList? e) => e?.toJson()).toList()
      };

  static final QueryField ID = QueryField(fieldName: "subscriptionPlan.id");
  static final QueryField SHOPS_COUNT = QueryField(fieldName: "shops_count");
  static final QueryField MAGAZINES_COUNT = QueryField(fieldName: "magazines_count");
  static final QueryField ACTIVE_UAE = QueryField(fieldName: "active_UAE");
  static final QueryField PRICE_UAE = QueryField(fieldName: "price_UAE");
  static final QueryField ACTIVE_DENMARK = QueryField(fieldName: "active_denmark");
  static final QueryField PRICE_DENMARK = QueryField(fieldName: "price_denmark");
  static final QueryField ACTIVE_UK = QueryField(fieldName: "active_UK");
  static final QueryField PRICE_UK = QueryField(fieldName: "price_UK");
  static final QueryField ACTIVE_NORWAY = QueryField(fieldName: "active_norway");
  static final QueryField PRICE_NORWAY = QueryField(fieldName: "price_norway");
  static final QueryField USERSID = QueryField(fieldName: "usersID");
  static final QueryField PLAN_NAME = QueryField(fieldName: "plan_name");
  static final QueryField PLAN_TITLE = QueryField(fieldName: "plan_title");
  static final QueryField USERPLAN =
      QueryField(fieldName: "userplan", fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (UserSubscriptionList).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "SubscriptionPlan";
    modelSchemaDefinition.pluralName = "SubscriptionPlans";

    modelSchemaDefinition.authRules = [
      AuthRule(
          authStrategy: AuthStrategy.PUBLIC, operations: [ModelOperation.CREATE, ModelOperation.UPDATE, ModelOperation.DELETE, ModelOperation.READ])
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition
        .addField(ModelFieldDefinition.field(key: SubscriptionPlan.SHOPS_COUNT, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(
        ModelFieldDefinition.field(key: SubscriptionPlan.MAGAZINES_COUNT, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition
        .addField(ModelFieldDefinition.field(key: SubscriptionPlan.ACTIVE_UAE, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.bool)));

    modelSchemaDefinition
        .addField(ModelFieldDefinition.field(key: SubscriptionPlan.PRICE_UAE, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.double)));

    modelSchemaDefinition.addField(
        ModelFieldDefinition.field(key: SubscriptionPlan.ACTIVE_DENMARK, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.bool)));

    modelSchemaDefinition.addField(
        ModelFieldDefinition.field(key: SubscriptionPlan.PRICE_DENMARK, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.double)));

    modelSchemaDefinition
        .addField(ModelFieldDefinition.field(key: SubscriptionPlan.ACTIVE_UK, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.bool)));

    modelSchemaDefinition
        .addField(ModelFieldDefinition.field(key: SubscriptionPlan.PRICE_UK, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.double)));

    modelSchemaDefinition.addField(
        ModelFieldDefinition.field(key: SubscriptionPlan.ACTIVE_NORWAY, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.bool)));

    modelSchemaDefinition.addField(
        ModelFieldDefinition.field(key: SubscriptionPlan.PRICE_NORWAY, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.double)));

    modelSchemaDefinition
        .addField(ModelFieldDefinition.field(key: SubscriptionPlan.USERSID, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition
        .addField(ModelFieldDefinition.field(key: SubscriptionPlan.PLAN_NAME, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition
        .addField(ModelFieldDefinition.field(key: SubscriptionPlan.PLAN_TITLE, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: SubscriptionPlan.USERPLAN,
        isRequired: false,
        ofModelName: (UserSubscriptionList).toString(),
        associatedKey: UserSubscriptionList.SUBSCRIPTIONPLANID));
  });
}

class _SubscriptionPlanModelType extends ModelType<SubscriptionPlan> {
  const _SubscriptionPlanModelType();

  @override
  SubscriptionPlan fromJson(Map<String, dynamic> jsonData) {
    return SubscriptionPlan.fromJson(jsonData);
  }
}
