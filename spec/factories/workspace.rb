# frozen_string_literal: true

FactoryBot.define do
  factory :workspace do
<<<<<<< HEAD
    name { Faker::Company.Random.new(30) }
    description { Faker::String.random(50) }
=======
    name { SecureRandom.hex(12) }
    description { SecureRandom.hex(30) }
>>>>>>> 03f8baf03531e2e25774d8257cd077e5315bb3a9
  end
end
