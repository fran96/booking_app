FactoryBot.define do

  factory :booking do
    booking_code  { "#{Random.rand(1000).to_s}XYZ" }
    date { "02/02/2020" }
    room
    user
  end
end