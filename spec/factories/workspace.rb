# frozen_string_literal: true

FactoryBot.define do
  factory :workspace do
    name { SecureRandom.hex(12) }
    description { SecureRandom.hex(30) }
  end
end
