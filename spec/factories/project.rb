# frozen_string_literal: true

FactoryBot.define do
  factory :project do
    name { SecureRandom.hex(12) }
  end
end
