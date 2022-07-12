class GqlMutations {
  static String createProduct =
      r'''mutation MyMutation($currency_type: String = "", $deal_type: ProductDealType = GREENDEALS, $discount: Float = 1.5, $expires_on: AWSDateTime = "", $has_offer: Boolean = false, $id: ID = "", $is_available: Boolean = false, $name: String = "", $offer_description: String = "", $offer_title: String = "", $price: Float = 1.5, $product_category: ProductCategory = FOOD, $product_description: String = "", $shopID: ID = "", $available_from: AWSDateTime = "", $_version: Int = 10, $img_token: String = "") {
        createProduct(input: {deal_type: $deal_type, currency_type: $currency_type, discount: $discount, expires_on: $expires_on, has_offer: $has_offer, id: $id, is_available: $is_available, name: $name, offer_description: $offer_description, offer_title: $offer_title, price: $price, product_category: $product_category, product_description: $product_description, shopID: $shopID, available_from: $available_from, _version: $_version, img_token: $img_token}) {
          _deleted
          _version
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
      }''';

  static String updateUserImage =
      r'''mutation MyMutation($id: ID = "", $img_token: String = "", $_version: Int) {
  updateUsers(input: {img_token: $img_token, id: $id, _version: $_version}) {
    id
    fullname
    img_token
  }
}
''';

  static String CreateMagazine =
      r'''mutation MyMutation( $img_tokens: [String] = "", $offer_ends_on: AWSDateTime = "", $thumbnail: String = "", $title: String = "", $website_url: AWSURL = "") {
  createMagazines(input: { img_tokens: $img_tokens, offer_ends_on: $offer_ends_on, thumbnail: $thumbnail, title: $title, website_url: $website_url}) {
    id
    img_tokens
    website_url
  }
}
''';
}
