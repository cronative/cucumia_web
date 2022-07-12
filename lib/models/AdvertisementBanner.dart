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


/** This is an auto generated class representing the AdvertisementBanner type in your schema. */
@immutable
class AdvertisementBanner extends Model {
  static const classType = const _AdvertisementBannerModelType();
  final String id;
  final String? _img_token;
  final double? _lat;
  final double? _lon;
  final String? _discription;
  final String? _link_url;
  final String? _usersID;
  final TemporalDateTime? _start_from;
  final TemporalDateTime? _end_on;
  final bool? _is_active;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get img_token {
    return _img_token;
  }
  
  double? get lat {
    return _lat;
  }
  
  double? get lon {
    return _lon;
  }
  
  String? get discription {
    return _discription;
  }
  
  String? get link_url {
    return _link_url;
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
  
  TemporalDateTime? get start_from {
    return _start_from;
  }
  
  TemporalDateTime? get end_on {
    return _end_on;
  }
  
  bool? get is_active {
    return _is_active;
  }
  
  const AdvertisementBanner._internal({required this.id, img_token, lat, lon, discription, link_url, required usersID, start_from, end_on, is_active}): _img_token = img_token, _lat = lat, _lon = lon, _discription = discription, _link_url = link_url, _usersID = usersID, _start_from = start_from, _end_on = end_on, _is_active = is_active;
  
  factory AdvertisementBanner({String? id, String? img_token, double? lat, double? lon, String? discription, String? link_url, required String usersID, TemporalDateTime? start_from, TemporalDateTime? end_on, bool? is_active}) {
    return AdvertisementBanner._internal(
      id: id == null ? UUID.getUUID() : id,
      img_token: img_token,
      lat: lat,
      lon: lon,
      discription: discription,
      link_url: link_url,
      usersID: usersID,
      start_from: start_from,
      end_on: end_on,
      is_active: is_active);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdvertisementBanner &&
      id == other.id &&
      _img_token == other._img_token &&
      _lat == other._lat &&
      _lon == other._lon &&
      _discription == other._discription &&
      _link_url == other._link_url &&
      _usersID == other._usersID &&
      _start_from == other._start_from &&
      _end_on == other._end_on &&
      _is_active == other._is_active;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("AdvertisementBanner {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("img_token=" + "$_img_token" + ", ");
    buffer.write("lat=" + (_lat != null ? _lat!.toString() : "null") + ", ");
    buffer.write("lon=" + (_lon != null ? _lon!.toString() : "null") + ", ");
    buffer.write("discription=" + "$_discription" + ", ");
    buffer.write("link_url=" + "$_link_url" + ", ");
    buffer.write("usersID=" + "$_usersID" + ", ");
    buffer.write("start_from=" + (_start_from != null ? _start_from!.format() : "null") + ", ");
    buffer.write("end_on=" + (_end_on != null ? _end_on!.format() : "null") + ", ");
    buffer.write("is_active=" + (_is_active != null ? _is_active!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  AdvertisementBanner copyWith({String? id, String? img_token, double? lat, double? lon, String? discription, String? link_url, String? usersID, TemporalDateTime? start_from, TemporalDateTime? end_on, bool? is_active}) {
    return AdvertisementBanner(
      id: id ?? this.id,
      img_token: img_token ?? this.img_token,
      lat: lat ?? this.lat,
      lon: lon ?? this.lon,
      discription: discription ?? this.discription,
      link_url: link_url ?? this.link_url,
      usersID: usersID ?? this.usersID,
      start_from: start_from ?? this.start_from,
      end_on: end_on ?? this.end_on,
      is_active: is_active ?? this.is_active);
  }
  
  AdvertisementBanner.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _img_token = json['img_token'],
      _lat = (json['lat'] as num?)?.toDouble(),
      _lon = (json['lon'] as num?)?.toDouble(),
      _discription = json['discription'],
      _link_url = json['link_url'],
      _usersID = json['usersID'],
      _start_from = json['start_from'] != null ? TemporalDateTime.fromString(json['start_from']) : null,
      _end_on = json['end_on'] != null ? TemporalDateTime.fromString(json['end_on']) : null,
      _is_active = json['is_active'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'img_token': _img_token, 'lat': _lat, 'lon': _lon, 'discription': _discription, 'link_url': _link_url, 'usersID': _usersID, 'start_from': _start_from?.format(), 'end_on': _end_on?.format(), 'is_active': _is_active
  };

  static final QueryField ID = QueryField(fieldName: "advertisementBanner.id");
  static final QueryField IMG_TOKEN = QueryField(fieldName: "img_token");
  static final QueryField LAT = QueryField(fieldName: "lat");
  static final QueryField LON = QueryField(fieldName: "lon");
  static final QueryField DISCRIPTION = QueryField(fieldName: "discription");
  static final QueryField LINK_URL = QueryField(fieldName: "link_url");
  static final QueryField USERSID = QueryField(fieldName: "usersID");
  static final QueryField START_FROM = QueryField(fieldName: "start_from");
  static final QueryField END_ON = QueryField(fieldName: "end_on");
  static final QueryField IS_ACTIVE = QueryField(fieldName: "is_active");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "AdvertisementBanner";
    modelSchemaDefinition.pluralName = "AdvertisementBanners";
    
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
      key: AdvertisementBanner.IMG_TOKEN,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: AdvertisementBanner.LAT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: AdvertisementBanner.LON,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: AdvertisementBanner.DISCRIPTION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: AdvertisementBanner.LINK_URL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: AdvertisementBanner.USERSID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: AdvertisementBanner.START_FROM,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: AdvertisementBanner.END_ON,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: AdvertisementBanner.IS_ACTIVE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
  });
}

class _AdvertisementBannerModelType extends ModelType<AdvertisementBanner> {
  const _AdvertisementBannerModelType();
  
  @override
  AdvertisementBanner fromJson(Map<String, dynamic> jsonData) {
    return AdvertisementBanner.fromJson(jsonData);
  }
}