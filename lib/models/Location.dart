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


/** This is an auto generated class representing the Location type in your schema. */
@immutable
class Location extends Model {
  static const classType = const _LocationModelType();
  final String id;
  final double? _lon;
  final double? _lat;
  final String? _physical_address;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  double? get lon {
    return _lon;
  }
  
  double? get lat {
    return _lat;
  }
  
  String? get physical_address {
    return _physical_address;
  }
  
  const Location._internal({required this.id, lon, lat, physical_address}): _lon = lon, _lat = lat, _physical_address = physical_address;
  
  factory Location({String? id, double? lon, double? lat, String? physical_address}) {
    return Location._internal(
      id: id == null ? UUID.getUUID() : id,
      lon: lon,
      lat: lat,
      physical_address: physical_address);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Location &&
      id == other.id &&
      _lon == other._lon &&
      _lat == other._lat &&
      _physical_address == other._physical_address;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Location {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("lon=" + (_lon != null ? _lon!.toString() : "null") + ", ");
    buffer.write("lat=" + (_lat != null ? _lat!.toString() : "null") + ", ");
    buffer.write("physical_address=" + "$_physical_address");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Location copyWith({String? id, double? lon, double? lat, String? physical_address}) {
    return Location(
      id: id ?? this.id,
      lon: lon ?? this.lon,
      lat: lat ?? this.lat,
      physical_address: physical_address ?? this.physical_address);
  }
  
  Location.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _lon = (json['lon'] as num?)?.toDouble(),
      _lat = (json['lat'] as num?)?.toDouble(),
      _physical_address = json['physical_address'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'lon': _lon, 'lat': _lat, 'physical_address': _physical_address
  };

  static final QueryField ID = QueryField(fieldName: "location.id");
  static final QueryField LON = QueryField(fieldName: "lon");
  static final QueryField LAT = QueryField(fieldName: "lat");
  static final QueryField PHYSICAL_ADDRESS = QueryField(fieldName: "physical_address");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Location";
    modelSchemaDefinition.pluralName = "Locations";
    
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
      key: Location.LON,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Location.LAT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Location.PHYSICAL_ADDRESS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _LocationModelType extends ModelType<Location> {
  const _LocationModelType();
  
  @override
  Location fromJson(Map<String, dynamic> jsonData) {
    return Location.fromJson(jsonData);
  }
}