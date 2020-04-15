FactoryBot.define do

  factory :user do
    nickname              {"touhu"}
    email                 {"ddd@8686.com"}
    password              {"dddd8686"}
    password_confirmation {"dddd8686"}
    phone_number          {"080-8686-8686"}
    first_name            {"藤原"}
    last_name             {"拓海"}
    first_name_reading    {"フジワラ"}
    last_name_reading     {"タクミ"}
    birthday_year         {"1990"}
    birthday_month        {"3"}
    birthday_day          {"10"}
  end

end