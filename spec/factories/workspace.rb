# frozen_string_literal: true

FactoryBot.define do
  factory :workspace do
    name { Faker::Company.Random.new(30) }
    description { Faker::String.random(50) }
  end
end
