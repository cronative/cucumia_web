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
import 'ActivityLog.dart';
import 'AdvertisementBanner.dart';
import 'BulkUploadFiles.dart';
import 'BundleProduct.dart';
import 'Bundles.dart';
import 'DeviceInfo.dart';
import 'InvitedUser.dart';
import 'Magazines.dart';
import 'PhonePin.dart';
import 'Product.dart';
import 'ProductImg.dart';
import 'ProductionLogs.dart';
import 'Shop.dart';
import 'ShopCategory.dart';
import 'SubscriptionLogs.dart';
import 'Todo.dart';
import 'UserProductReview.dart';
import 'UserShopFavourite.dart';
import 'UserShopReview.dart';
import 'Users.dart';
import 'UsersHierarchy.dart';

export 'ActivityLog.dart';
export 'AdvertisementBanner.dart';
export 'BulkUploadFiles.dart';
export 'BundleProduct.dart';
export 'Bundles.dart';
export 'DeviceInfo.dart';
export 'InvitedUser.dart';
export 'Magazines.dart';
export 'PhonePin.dart';
export 'Product.dart';
export 'ProductCategory.dart';
export 'ProductDealType.dart';
export 'ProductImg.dart';
export 'ProductionLogs.dart';
export 'Shop.dart';
export 'ShopCategory.dart';
export 'SubscriptionLogs.dart';
export 'Todo.dart';
export 'UploadingStat.dart';
export 'UserProductReview.dart';
export 'UserShopFavourite.dart';
export 'UserShopReview.dart';
export 'UserStatus.dart';
export 'UserType.dart';
export 'Users.dart';
export 'UsersHierarchy.dart';

class ModelProvider implements ModelProviderInterface {
  @override
  String version = "d8fd0517145908a05d894c90e4266725";
  @override
  List<ModelSchema> modelSchemas = [ActivityLog.schema, AdvertisementBanner.schema, BulkUploadFiles.schema, BundleProduct.schema, Bundles.schema, DeviceInfo.schema, InvitedUser.schema, Magazines.schema, PhonePin.schema, Product.schema, ProductImg.schema, ProductionLogs.schema, Shop.schema, ShopCategory.schema, SubscriptionLogs.schema, Todo.schema, UserProductReview.schema, UserShopFavourite.schema, UserShopReview.schema, Users.schema, UsersHierarchy.schema];
  static final ModelProvider _instance = ModelProvider();

  static ModelProvider get instance => _instance;
  
  ModelType getModelTypeByModelName(String modelName) {
    switch(modelName) {
      case "ActivityLog":
        return ActivityLog.classType;
      case "AdvertisementBanner":
        return AdvertisementBanner.classType;
      case "BulkUploadFiles":
        return BulkUploadFiles.classType;
      case "BundleProduct":
        return BundleProduct.classType;
      case "Bundles":
        return Bundles.classType;
      case "DeviceInfo":
        return DeviceInfo.classType;
      case "InvitedUser":
        return InvitedUser.classType;
      case "Magazines":
        return Magazines.classType;
      case "PhonePin":
        return PhonePin.classType;
      case "Product":
        return Product.classType;
      case "ProductImg":
        return ProductImg.classType;
      case "ProductionLogs":
        return ProductionLogs.classType;
      case "Shop":
        return Shop.classType;
      case "ShopCategory":
        return ShopCategory.classType;
      case "SubscriptionLogs":
        return SubscriptionLogs.classType;
      case "Todo":
        return Todo.classType;
      case "UserProductReview":
        return UserProductReview.classType;
      case "UserShopFavourite":
        return UserShopFavourite.classType;
      case "UserShopReview":
        return UserShopReview.classType;
      case "Users":
        return Users.classType;
      case "UsersHierarchy":
        return UsersHierarchy.classType;
      default:
        throw Exception("Failed to find model in model provider for model name: " + modelName);
    }
  }
}