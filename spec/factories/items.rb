FactoryBot.define do
  factory :item do
    name {"テストの商品"}
    # images    { Rack::Test::UploadedFile.new("spec/fixtures/no_image.png", "image/png")}
    images {[FactoryBot.build(:image, item: nil)]}
    discription {"hogeeeeeeeefugaaaaaaaaaaaa"}
    category_id {1}
    brand_id {1}
    saler_user_id {1}
    # item_status {"1"}
    # # shipping_charge {"1"}
    # fee_side {"1"}
    # shipping_way {"1"}
    # sipping_days {"1"}
    item_status {1}
    fee_side {1}
    shipping_way {1}
    sipping_days {1}
    price {20000}
    region {1}
    transaction_status {1}
  end
end
