FactoryBot.define do

  factory :booking do
    booking_code { "frn666" }
    date { "02/02/2020" }
    room_id { 1 }
    user_id { user }
  end
end