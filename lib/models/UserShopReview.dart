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


/** This is an auto generated class representing the UserShopReview type in your schema. */
@immutable
class UserShopReview extends Model {
  static const classType = const _UserShopReviewModelType();
  final String id;
  final String? _comment;
  final double? _rating;
  final String? _shopID;
  final String? _usersID;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get comment {
    return _comment;
  }
  
  double? get rating {
    return _rating;
  }
  
  String? get shopID {
    return _shopID;
  }
  
  String? get usersID {
    return _usersID;
  }
  
  const UserShopReview._internal({required this.id, comment, rating, shopID, usersID}): _comment = comment, _rating = rating, _shopID = shopID, _usersID = usersID;
  
  factory UserShopReview({String? id, String? comment, double? rating, String? shopID, String? usersID}) {
    return UserShopReview._internal(
      id: id == null ? UUID.getUUID() : id,
      comment: comment,
      rating: rating,
      shopID: shopID,
      usersID: usersID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserShopReview &&
      id == other.id &&
      _comment == other._comment &&
      _rating == other._rating &&
      _shopID == other._shopID &&
      _usersID == other._usersID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("UserShopReview {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("comment=" + "$_comment" + ", ");
    buffer.write("rating=" + (_rating != null ? _rating!.toString() : "null") + ", ");
    buffer.write("shopID=" + "$_shopID" + ", ");
    buffer.write("usersID=" + "$_usersID");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  UserShopReview copyWith({String? id, String? comment, double? rating, String? shopID, String? usersID}) {
    return UserShopReview(
      id: id ?? this.id,
      comment: comment ?? this.comment,
      rating: rating ?? this.rating,
      shopID: shopID ?? this.shopID,
      usersID: usersID ?? this.usersID);
  }
  
  UserShopReview.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _comment = json['comment'],
      _rating = (json['rating'] as num?)?.toDouble(),
      _shopID = json['shopID'],
      _usersID = json['usersID'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'comment': _comment, 'rating': _rating, 'shopID': _shopID, 'usersID': _usersID
  };

  static final QueryField ID = QueryField(fieldName: "userShopReview.id");
  static final QueryField COMMENT = QueryField(fieldName: "comment");
  static final QueryField RATING = QueryField(fieldName: "rating");
  static final QueryField SHOPID = QueryField(fieldName: "shopID");
  static final QueryField USERSID = QueryField(fieldName: "usersID");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "UserShopReview";
    modelSchemaDefinition.pluralName = "UserShopReviews";
    
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
      key: UserShopReview.COMMENT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserShopReview.RATING,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserShopReview.SHOPID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserShopReview.USERSID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _UserShopReviewModelType extends ModelType<UserShopReview> {
  const _UserShopReviewModelType();
  
  @override
  UserShopReview fromJson(Map<String, dynamic> jsonData) {
    return UserShopReview.fromJson(jsonData);
  }
}