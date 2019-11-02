FactoryBot.define do

  factory :user do
    name { Faker::Name::name }
    #sequence(:email) { |i| "random_#{i}@xyz.com" }
    email {|u| "#{u.name.gsub(/[^a-zA-Z1-10]/, '')}_#{Random.rand(1000).to_s}@xyz.com" }
    password{ "xyz" }
  end
end