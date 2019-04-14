FactoryBot.define do
	factory :user do
		username { SecureRandom.hex(12) }
		email { Faker::Internet.email }
		password { Faker::Internet.password }
	end
end