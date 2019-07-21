FactoryBot.define do
	password = Faker::Internet.password(6)
  factory :admin do
    sequence(:name){ |n| "testname#{n}"}
  	sequence(:email){ |n| "test#{n}@gmail.com"}
  	password { password }
    password_confirmation { password }

  	trait :no_name do
  		name {}
  	end

  	trait :name_long do
		name { Faker::Lorem.characters(51) }
  	end

  	trait :no_email do
  		email {}
  	end

  	trait :no_password do
  		password {}
  	end

  end
end
