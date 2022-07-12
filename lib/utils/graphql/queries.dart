class GqlQueries {
  static String getUserbyEmail = r"""query MyQuery($email: String!) {
    listUsers(filter: {email: {eq: $email}}) {
      items {
        _deleted
        email
        applie_id
        fullname
        phn_number
        user_type
        id
        img_token
        isUserSecure
        managed_by
        saved_location
        radiusPreference
        current_lon
        current_lat
        current_language
        _version
      }
    }
  }""";

  static String getUserbyID = r"""query MyQuery($id: ID!) {
    getUsers(id: $id) {
      _deleted
      email
      applie_id
      fullname
      phn_number
      user_type
      id
      img_token
      isUserSecure
      managed_by
      saved_location
      radiusPreference
      current_lon
      current_lat
      current_language
      _version
    }
  }""";

  static String fetchAllProducts = r'''query MyQuery {
    syncProducts {
      items {
        updatedAt
        shopID
        product_description
        product_category
        price
        offer_title
        offer_description
        name
        is_available
        img_token
        id
        has_offer
        expires_on
        discount
        deal_type
        currency_type
        created_on
        createdAt
        available_from
        _version
        _lastChangedAt
        _deleted
        UserProductReviews {
          nextToken
          startedAt
          items {
            _deleted
            _lastChangedAt
            _version
            createdAt
            id
            productID
            updatedAt
            img_token
            tags
          }
        }
        ProductImages {
          items {
            _deleted
            _lastChangedAt
            _version
            createdAt
            id
            img_token
            productID
            tags
            updatedAt
          }
        }
      }
      nextToken
      startedAt
    }
  }''';
  static String fetchAllMagazines = r'''query MyQuery {
  searchMagazines(sort: {direction: desc, field: uploaded_on}) {
    items {
      id
      img_tokens
      thumbnail
      title
      uploaded_on
      website_url
      usersID
      updatedAt
      publish_from
      offer_ends_on
      lon
      lat
      createdAt
      _version
      _lastChangedAt
      _deleted
    }
  }
}
''';
  static String fetchAllShops = r'''query MyQuery($usersID: ID = "") {
  listShops(filter: {usersID: {eq: $usersID}}) {
    items {
      usersID
      url
      updatedAt
      shopcategoryID
      rating
      phy_address
      phonepinID
      phn_number
      opening_time
      name
      img_token
      id
      createdAt
      about
    }
  }
}
''';

  static String getallproductsbyshopid = r'''
query MyQuery($shopId: ID = "") {
  listProducts(filter: {shopID: {eq: $shopId}}) {
    items {
      _deleted
      available_from
      createdAt
      created_on
      currency_type
      deal_type
      discount
      expires_on
      has_offer
      id
      img_token
      is_available
      name
      offer_description
      offer_title
      price
      product_category
      product_description
      shopID
      updatedAt
    }
  }
}''';

  static String getUserVersionId = r'''query MyQuery($id: ID = "") {
  getUsers(id: $id) {
    _deleted
    _version
    id
    img_token
  }
}''';
}



// const queryDoc = r'''
//     query AllProducts {
//       syncProductMasters {
//         items {
//           brand
//           ATPQuantity
//           amazon
//           category
//           clicks
//           cit
//           country
//           createdAt
//           currency
//           description
//           discount
//           flipkart
//           id
//           pincode
//           other
//           productImgUrl
//           price
//           productVideoUrl
//           shopmasterID
//           stockQuantity
//           title
//           updatedAt
//           keywords
//           _deleted
//           shop {
//             videoSupported
//             usermasterID
//             updatedAt
//             shopOpening
//             shopName
//             shopImgUrl
//             shopCoverImg
//             shopClosing
//             mobileNumber
//             maxCallDuration
//             id
//             email
//             createdAt
//             city
//             chatSupported
//             buildingNumber
//             breakStart
//             breakEnd
//             _version
//             audioSupported
//             _lastChangedAt
//             _deleted
//             StreetAddress
//             State
//             PinCode
//             Passwor
//           }
//         }
//       }
//     }
//         ''';
//     final GraphQLRequest request = GraphQLRequest(document: queryDoc);
//     final query = Amplify.API.query(request: request);
//     final response = (await query.response).data;
//     final body = jsonDecode(response);
//     final prods = body['syncProductMasters']['items'] as List<dynamic>;
//     // if (prods.isEmpty) {
//     //   return const [];
//     // }
//     // return List.generate(
//     //   prods.length,
//     //   (int index) => ProductMaster.fromJson(
//     //     prods[index],
//     //   ),
//     // );
//     List<ProductMaster> _allProducts = [];
//     for (var _productItem in prods) {
//       if (_productItem['_deleted'] == null && _productItem['shop'] != null) {
//         // print(_productItem['shop']);
//         _productItem['shop'] = {"serializedData": _productItem['shop']};
//         final ProductMaster _productInstance =
//             ProductMaster.fromJson(_productItem);
//         if (!_allProducts.contains(_productInstance)) {
//           _allProducts.add(_productInstance);
//         }
//       }
//     }
//     return _allProducts;