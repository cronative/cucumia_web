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


/** This is an auto generated class representing the InvitedUser type in your schema. */
@immutable
class InvitedUser extends Model {
  static const classType = const _InvitedUserModelType();
  final String id;
  final String? _fullname;
  final String? _img_token;
  final String? _phn_number;
  final String? _gmail_id;
  final String? _fb_id;
  final String? _apple_id;
  final String? _email;
  final String? _current_language;
  final double? _current_lat;
  final double? _current_lon;
  final String? _saved_location;
  final double? _radiusPrefernce;
  final String? _deleted_parent;
  final UserType? _user_type;
  final bool? _isUserSecure;
  final String? _usersID;
  final bool? _status;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get fullname {
    return _fullname;
  }
  
  String? get img_token {
    return _img_token;
  }
  
  String? get phn_number {
    return _phn_number;
  }
  
  String? get gmail_id {
    return _gmail_id;
  }
  
  String? get fb_id {
    return _fb_id;
  }
  
  String? get apple_id {
    return _apple_id;
  }
  
  String? get email {
    return _email;
  }
  
  String? get current_language {
    return _current_language;
  }
  
  double? get current_lat {
    return _current_lat;
  }
  
  double? get current_lon {
    return _current_lon;
  }
  
  String? get saved_location {
    return _saved_location;
  }
  
  double? get radiusPrefernce {
    return _radiusPrefernce;
  }
  
  String? get deleted_parent {
    return _deleted_parent;
  }
  
  UserType? get user_type {
    return _user_type;
  }
  
  bool? get isUserSecure {
    return _isUserSecure;
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
  
  bool? get status {
    return _status;
  }
  
  const InvitedUser._internal({required this.id, fullname, img_token, phn_number, gmail_id, fb_id, apple_id, email, current_language, current_lat, current_lon, saved_location, radiusPrefernce, deleted_parent, user_type, isUserSecure, required usersID, status}): _fullname = fullname, _img_token = img_token, _phn_number = phn_number, _gmail_id = gmail_id, _fb_id = fb_id, _apple_id = apple_id, _email = email, _current_language = current_language, _current_lat = current_lat, _current_lon = current_lon, _saved_location = saved_location, _radiusPrefernce = radiusPrefernce, _deleted_parent = deleted_parent, _user_type = user_type, _isUserSecure = isUserSecure, _usersID = usersID, _status = status;
  
  factory InvitedUser({String? id, String? fullname, String? img_token, String? phn_number, String? gmail_id, String? fb_id, String? apple_id, String? email, String? current_language, double? current_lat, double? current_lon, String? saved_location, double? radiusPrefernce, String? deleted_parent, UserType? user_type, bool? isUserSecure, required String usersID, bool? status}) {
    return InvitedUser._internal(
      id: id == null ? UUID.getUUID() : id,
      fullname: fullname,
      img_token: img_token,
      phn_number: phn_number,
      gmail_id: gmail_id,
      fb_id: fb_id,
      apple_id: apple_id,
      email: email,
      current_language: current_language,
      current_lat: current_lat,
      current_lon: current_lon,
      saved_location: saved_location,
      radiusPrefernce: radiusPrefernce,
      deleted_parent: deleted_parent,
      user_type: user_type,
      isUserSecure: isUserSecure,
      usersID: usersID,
      status: status);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvitedUser &&
      id == other.id &&
      _fullname == other._fullname &&
      _img_token == other._img_token &&
      _phn_number == other._phn_number &&
      _gmail_id == other._gmail_id &&
      _fb_id == other._fb_id &&
      _apple_id == other._apple_id &&
      _email == other._email &&
      _current_language == other._current_language &&
      _current_lat == other._current_lat &&
      _current_lon == other._current_lon &&
      _saved_location == other._saved_location &&
      _radiusPrefernce == other._radiusPrefernce &&
      _deleted_parent == other._deleted_parent &&
      _user_type == other._user_type &&
      _isUserSecure == other._isUserSecure &&
      _usersID == other._usersID &&
      _status == other._status;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("InvitedUser {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("fullname=" + "$_fullname" + ", ");
    buffer.write("img_token=" + "$_img_token" + ", ");
    buffer.write("phn_number=" + "$_phn_number" + ", ");
    buffer.write("gmail_id=" + "$_gmail_id" + ", ");
    buffer.write("fb_id=" + "$_fb_id" + ", ");
    buffer.write("apple_id=" + "$_apple_id" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("current_language=" + "$_current_language" + ", ");
    buffer.write("current_lat=" + (_current_lat != null ? _current_lat!.toString() : "null") + ", ");
    buffer.write("current_lon=" + (_current_lon != null ? _current_lon!.toString() : "null") + ", ");
    buffer.write("saved_location=" + "$_saved_location" + ", ");
    buffer.write("radiusPrefernce=" + (_radiusPrefernce != null ? _radiusPrefernce!.toString() : "null") + ", ");
    buffer.write("deleted_parent=" + "$_deleted_parent" + ", ");
    buffer.write("user_type=" + (_user_type != null ? enumToString(_user_type)! : "null") + ", ");
    buffer.write("isUserSecure=" + (_isUserSecure != null ? _isUserSecure!.toString() : "null") + ", ");
    buffer.write("usersID=" + "$_usersID" + ", ");
    buffer.write("status=" + (_status != null ? _status!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  InvitedUser copyWith({String? id, String? fullname, String? img_token, String? phn_number, String? gmail_id, String? fb_id, String? apple_id, String? email, String? current_language, double? current_lat, double? current_lon, String? saved_location, double? radiusPrefernce, String? deleted_parent, UserType? user_type, bool? isUserSecure, String? usersID, bool? status}) {
    return InvitedUser(
      id: id ?? this.id,
      fullname: fullname ?? this.fullname,
      img_token: img_token ?? this.img_token,
      phn_number: phn_number ?? this.phn_number,
      gmail_id: gmail_id ?? this.gmail_id,
      fb_id: fb_id ?? this.fb_id,
      apple_id: apple_id ?? this.apple_id,
      email: email ?? this.email,
      current_language: current_language ?? this.current_language,
      current_lat: current_lat ?? this.current_lat,
      current_lon: current_lon ?? this.current_lon,
      saved_location: saved_location ?? this.saved_location,
      radiusPrefernce: radiusPrefernce ?? this.radiusPrefernce,
      deleted_parent: deleted_parent ?? this.deleted_parent,
      user_type: user_type ?? this.user_type,
      isUserSecure: isUserSecure ?? this.isUserSecure,
      usersID: usersID ?? this.usersID,
      status: status ?? this.status);
  }
  
  InvitedUser.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _fullname = json['fullname'],
      _img_token = json['img_token'],
      _phn_number = json['phn_number'],
      _gmail_id = json['gmail_id'],
      _fb_id = json['fb_id'],
      _apple_id = json['apple_id'],
      _email = json['email'],
      _current_language = json['current_language'],
      _current_lat = (json['current_lat'] as num?)?.toDouble(),
      _current_lon = (json['current_lon'] as num?)?.toDouble(),
      _saved_location = json['saved_location'],
      _radiusPrefernce = (json['radiusPrefernce'] as num?)?.toDouble(),
      _deleted_parent = json['deleted_parent'],
      _user_type = enumFromString<UserType>(json['user_type'], UserType.values),
      _isUserSecure = json['isUserSecure'],
      _usersID = json['usersID'],
      _status = json['status'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'fullname': _fullname, 'img_token': _img_token, 'phn_number': _phn_number, 'gmail_id': _gmail_id, 'fb_id': _fb_id, 'apple_id': _apple_id, 'email': _email, 'current_language': _current_language, 'current_lat': _current_lat, 'current_lon': _current_lon, 'saved_location': _saved_location, 'radiusPrefernce': _radiusPrefernce, 'deleted_parent': _deleted_parent, 'user_type': enumToString(_user_type), 'isUserSecure': _isUserSecure, 'usersID': _usersID, 'status': _status
  };

  static final QueryField ID = QueryField(fieldName: "invitedUser.id");
  static final QueryField FULLNAME = QueryField(fieldName: "fullname");
  static final QueryField IMG_TOKEN = QueryField(fieldName: "img_token");
  static final QueryField PHN_NUMBER = QueryField(fieldName: "phn_number");
  static final QueryField GMAIL_ID = QueryField(fieldName: "gmail_id");
  static final QueryField FB_ID = QueryField(fieldName: "fb_id");
  static final QueryField APPLE_ID = QueryField(fieldName: "apple_id");
  static final QueryField EMAIL = QueryField(fieldName: "email");
  static final QueryField CURRENT_LANGUAGE = QueryField(fieldName: "current_language");
  static final QueryField CURRENT_LAT = QueryField(fieldName: "current_lat");
  static final QueryField CURRENT_LON = QueryField(fieldName: "current_lon");
  static final QueryField SAVED_LOCATION = QueryField(fieldName: "saved_location");
  static final QueryField RADIUSPREFERNCE = QueryField(fieldName: "radiusPrefernce");
  static final QueryField DELETED_PARENT = QueryField(fieldName: "deleted_parent");
  static final QueryField USER_TYPE = QueryField(fieldName: "user_type");
  static final QueryField ISUSERSECURE = QueryField(fieldName: "isUserSecure");
  static final QueryField USERSID = QueryField(fieldName: "usersID");
  static final QueryField STATUS = QueryField(fieldName: "status");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "InvitedUser";
    modelSchemaDefinition.pluralName = "InvitedUsers";
    
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
      key: InvitedUser.FULLNAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InvitedUser.IMG_TOKEN,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InvitedUser.PHN_NUMBER,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InvitedUser.GMAIL_ID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InvitedUser.FB_ID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InvitedUser.APPLE_ID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InvitedUser.EMAIL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InvitedUser.CURRENT_LANGUAGE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InvitedUser.CURRENT_LAT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InvitedUser.CURRENT_LON,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InvitedUser.SAVED_LOCATION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InvitedUser.RADIUSPREFERNCE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InvitedUser.DELETED_PARENT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InvitedUser.USER_TYPE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InvitedUser.ISUSERSECURE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InvitedUser.USERSID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InvitedUser.STATUS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
  });
}

class _InvitedUserModelType extends ModelType<InvitedUser> {
  const _InvitedUserModelType();
  
  @override
  InvitedUser fromJson(Map<String, dynamic> jsonData) {
    return InvitedUser.fromJson(jsonData);
  }
}