FactoryBot.define do
	password = Faker::Internet.password(6)
  factory :organization do
    sequence(:name){ |n| "testname#{n}"}
  	sequence(:email){ |n| "testemail#{n}@gmail.com"}
  	sequence(:password){ password }
  	sequence(:telephone){|n| "1111111111#{n}"}
  	sequence(:postalcode){ |n| "111111#{n}"}
  	sequence(:address){ |n| "testaddress#{n}"}

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


  	trait :no_telephone do
  		telephone {}
  	end

  	trait :telephone_long do
  		telephone {Faker::Lorem.characters(21)}
  	end

  	trait :no_postalcode do
  		postalcode {}
  	end

  	trait :postalcode_long do
  		postalcode {Faker::Lorem.characters(8)}
  	end

  	trait :no_address do
  		address {}
  	end
  end
end
