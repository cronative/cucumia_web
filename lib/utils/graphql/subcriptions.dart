class GqlSubcriptions {
  static String onCreateProduct = r'''subscription MyQuery {
    onCreateProduct {
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
            Rating
            _deleted
            _lastChangedAt
            _version
            comment
            createdAt
            id
            productID
            updatedAt
            usersID
          }
        }
    }
  }''';
}
