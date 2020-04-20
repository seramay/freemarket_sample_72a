FactoryBot.define do
  factory :item do
    user_id     {"1"}
    name        {"hoge"}
    description {"hogehoge"}
    category_id {"5"}
    size        {"S"}
    condition   {"新品、未使用"}
    brand_id    {"4"}
    ship_price  {"送料込み(出品者負担)"}
    ship_method {"未定"}
    ship_area   {23}
    ship_day    {"1〜2日で発送"}
    price       {500}
  end
end