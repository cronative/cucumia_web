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


/** This is an auto generated class representing the Magazines type in your schema. */
@immutable
class Magazines extends Model {
  static const classType = const _MagazinesModelType();
  final String id;
  final String? _title;
  final TemporalDateTime? _uploaded_on;
  final TemporalDateTime? _offer_ends_on;
  final String? _website_url;
  final List<String>? _img_tokens;
  final String? _usersID;
  final String? _thumbnail;
  final double? _lon;
  final double? _lat;
  final TemporalDateTime? _publish_from;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get title {
    return _title;
  }
  
  TemporalDateTime? get uploaded_on {
    return _uploaded_on;
  }
  
  TemporalDateTime? get offer_ends_on {
    return _offer_ends_on;
  }
  
  String? get website_url {
    return _website_url;
  }
  
  List<String>? get img_tokens {
    return _img_tokens;
  }
  
  String? get usersID {
    return _usersID;
  }
  
  String? get thumbnail {
    return _thumbnail;
  }
  
  double? get lon {
    return _lon;
  }
  
  double? get lat {
    return _lat;
  }
  
  TemporalDateTime? get publish_from {
    return _publish_from;
  }
  
  const Magazines._internal({required this.id, title, uploaded_on, offer_ends_on, website_url, img_tokens, usersID, thumbnail, lon, lat, publish_from}): _title = title, _uploaded_on = uploaded_on, _offer_ends_on = offer_ends_on, _website_url = website_url, _img_tokens = img_tokens, _usersID = usersID, _thumbnail = thumbnail, _lon = lon, _lat = lat, _publish_from = publish_from;
  
  factory Magazines({String? id, String? title, TemporalDateTime? uploaded_on, TemporalDateTime? offer_ends_on, String? website_url, List<String>? img_tokens, String? usersID, String? thumbnail, double? lon, double? lat, TemporalDateTime? publish_from}) {
    return Magazines._internal(
      id: id == null ? UUID.getUUID() : id,
      title: title,
      uploaded_on: uploaded_on,
      offer_ends_on: offer_ends_on,
      website_url: website_url,
      img_tokens: img_tokens != null ? List<String>.unmodifiable(img_tokens) : img_tokens,
      usersID: usersID,
      thumbnail: thumbnail,
      lon: lon,
      lat: lat,
      publish_from: publish_from);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Magazines &&
      id == other.id &&
      _title == other._title &&
      _uploaded_on == other._uploaded_on &&
      _offer_ends_on == other._offer_ends_on &&
      _website_url == other._website_url &&
      DeepCollectionEquality().equals(_img_tokens, other._img_tokens) &&
      _usersID == other._usersID &&
      _thumbnail == other._thumbnail &&
      _lon == other._lon &&
      _lat == other._lat &&
      _publish_from == other._publish_from;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Magazines {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("title=" + "$_title" + ", ");
    buffer.write("uploaded_on=" + (_uploaded_on != null ? _uploaded_on!.format() : "null") + ", ");
    buffer.write("offer_ends_on=" + (_offer_ends_on != null ? _offer_ends_on!.format() : "null") + ", ");
    buffer.write("website_url=" + "$_website_url" + ", ");
    buffer.write("img_tokens=" + (_img_tokens != null ? _img_tokens!.toString() : "null") + ", ");
    buffer.write("usersID=" + "$_usersID" + ", ");
    buffer.write("thumbnail=" + "$_thumbnail" + ", ");
    buffer.write("lon=" + (_lon != null ? _lon!.toString() : "null") + ", ");
    buffer.write("lat=" + (_lat != null ? _lat!.toString() : "null") + ", ");
    buffer.write("publish_from=" + (_publish_from != null ? _publish_from!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Magazines copyWith({String? id, String? title, TemporalDateTime? uploaded_on, TemporalDateTime? offer_ends_on, String? website_url, List<String>? img_tokens, String? usersID, String? thumbnail, double? lon, double? lat, TemporalDateTime? publish_from}) {
    return Magazines(
      id: id ?? this.id,
      title: title ?? this.title,
      uploaded_on: uploaded_on ?? this.uploaded_on,
      offer_ends_on: offer_ends_on ?? this.offer_ends_on,
      website_url: website_url ?? this.website_url,
      img_tokens: img_tokens ?? this.img_tokens,
      usersID: usersID ?? this.usersID,
      thumbnail: thumbnail ?? this.thumbnail,
      lon: lon ?? this.lon,
      lat: lat ?? this.lat,
      publish_from: publish_from ?? this.publish_from);
  }
  
  Magazines.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _title = json['title'],
      _uploaded_on = json['uploaded_on'] != null ? TemporalDateTime.fromString(json['uploaded_on']) : null,
      _offer_ends_on = json['offer_ends_on'] != null ? TemporalDateTime.fromString(json['offer_ends_on']) : null,
      _website_url = json['website_url'],
      _img_tokens = json['img_tokens']?.cast<String>(),
      _usersID = json['usersID'],
      _thumbnail = json['thumbnail'],
      _lon = (json['lon'] as num?)?.toDouble(),
      _lat = (json['lat'] as num?)?.toDouble(),
      _publish_from = json['publish_from'] != null ? TemporalDateTime.fromString(json['publish_from']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'title': _title, 'uploaded_on': _uploaded_on?.format(), 'offer_ends_on': _offer_ends_on?.format(), 'website_url': _website_url, 'img_tokens': _img_tokens, 'usersID': _usersID, 'thumbnail': _thumbnail, 'lon': _lon, 'lat': _lat, 'publish_from': _publish_from?.format()
  };

  static final QueryField ID = QueryField(fieldName: "magazines.id");
  static final QueryField TITLE = QueryField(fieldName: "title");
  static final QueryField UPLOADED_ON = QueryField(fieldName: "uploaded_on");
  static final QueryField OFFER_ENDS_ON = QueryField(fieldName: "offer_ends_on");
  static final QueryField WEBSITE_URL = QueryField(fieldName: "website_url");
  static final QueryField IMG_TOKENS = QueryField(fieldName: "img_tokens");
  static final QueryField USERSID = QueryField(fieldName: "usersID");
  static final QueryField THUMBNAIL = QueryField(fieldName: "thumbnail");
  static final QueryField LON = QueryField(fieldName: "lon");
  static final QueryField LAT = QueryField(fieldName: "lat");
  static final QueryField PUBLISH_FROM = QueryField(fieldName: "publish_from");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Magazines";
    modelSchemaDefinition.pluralName = "Magazines";
    
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
      key: Magazines.TITLE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Magazines.UPLOADED_ON,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Magazines.OFFER_ENDS_ON,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Magazines.WEBSITE_URL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Magazines.IMG_TOKENS,
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.collection, ofModelName: describeEnum(ModelFieldTypeEnum.string))
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Magazines.USERSID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Magazines.THUMBNAIL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Magazines.LON,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Magazines.LAT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Magazines.PUBLISH_FROM,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _MagazinesModelType extends ModelType<Magazines> {
  const _MagazinesModelType();
  
  @override
  Magazines fromJson(Map<String, dynamic> jsonData) {
    return Magazines.fromJson(jsonData);
  }
}