# frozen_string_literal: true

FactoryBot.define do
  factory :point do
    name { Faker::Name.name }
    latitude { Faker::Address.latitude }
    longitude { Faker::Address.longitude }
  end
end
