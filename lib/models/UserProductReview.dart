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


/** This is an auto generated class representing the UserProductReview type in your schema. */
@immutable
class UserProductReview extends Model {
  static const classType = const _UserProductReviewModelType();
  final String id;
  final String? _comment;
  final double? _Rating;
  final String? _productID;
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
  
  double? get Rating {
    return _Rating;
  }
  
  String get productID {
    try {
      return _productID!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get usersID {
    return _usersID;
  }
  
  const UserProductReview._internal({required this.id, comment, Rating, required productID, usersID}): _comment = comment, _Rating = Rating, _productID = productID, _usersID = usersID;
  
  factory UserProductReview({String? id, String? comment, double? Rating, required String productID, String? usersID}) {
    return UserProductReview._internal(
      id: id == null ? UUID.getUUID() : id,
      comment: comment,
      Rating: Rating,
      productID: productID,
      usersID: usersID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserProductReview &&
      id == other.id &&
      _comment == other._comment &&
      _Rating == other._Rating &&
      _productID == other._productID &&
      _usersID == other._usersID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("UserProductReview {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("comment=" + "$_comment" + ", ");
    buffer.write("Rating=" + (_Rating != null ? _Rating!.toString() : "null") + ", ");
    buffer.write("productID=" + "$_productID" + ", ");
    buffer.write("usersID=" + "$_usersID");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  UserProductReview copyWith({String? id, String? comment, double? Rating, String? productID, String? usersID}) {
    return UserProductReview(
      id: id ?? this.id,
      comment: comment ?? this.comment,
      Rating: Rating ?? this.Rating,
      productID: productID ?? this.productID,
      usersID: usersID ?? this.usersID);
  }
  
  UserProductReview.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _comment = json['comment'],
      _Rating = (json['Rating'] as num?)?.toDouble(),
      _productID = json['productID'],
      _usersID = json['usersID'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'comment': _comment, 'Rating': _Rating, 'productID': _productID, 'usersID': _usersID
  };

  static final QueryField ID = QueryField(fieldName: "userProductReview.id");
  static final QueryField COMMENT = QueryField(fieldName: "comment");
  static final QueryField RATING = QueryField(fieldName: "Rating");
  static final QueryField PRODUCTID = QueryField(fieldName: "productID");
  static final QueryField USERSID = QueryField(fieldName: "usersID");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "UserProductReview";
    modelSchemaDefinition.pluralName = "UserProductReviews";
    
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
      key: UserProductReview.COMMENT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserProductReview.RATING,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserProductReview.PRODUCTID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserProductReview.USERSID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _UserProductReviewModelType extends ModelType<UserProductReview> {
  const _UserProductReviewModelType();
  
  @override
  UserProductReview fromJson(Map<String, dynamic> jsonData) {
    return UserProductReview.fromJson(jsonData);
  }
}