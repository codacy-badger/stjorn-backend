# frozen_string_literal: true

FactoryBot.define do
  factory :todo do
    items { SecureRandom.hex(20) }
  end
end
