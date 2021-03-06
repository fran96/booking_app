FactoryBot.define do

  factory :user do
    name { Faker::Name::name }
    email {|u| "#{u.name.gsub(/[^a-zA-Z1-10]/, '')}_#{Random.rand(1000).to_s}@xyz.com" }
    password{ "xyz" }
  end
end