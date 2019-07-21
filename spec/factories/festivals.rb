FactoryBot.define do
	date = Faker::Date.forward(1000)
  factory :festival do
    sequence(:name){ |n| "testname#{n}"}
    sequence(:address){ |n| "testaddress#{n}"}
    sequence(:traffic){ |n| "testtraffic#{n}"}
    sequence(:profile){ |n| "testprofile#{n}"}
    sequence(:organization_id){ |n|"#{n}"}
    sequence(:date){ date }
    sequence(:fes_image_id){|n| "#{n}.jpg"}

    trait :no_organization do
        organization_id {}
    end

    trait :no_name do
    	name {}
    end

    trait :name_long do
    	name { Faker::Lorem.characters(101) }
    end

    trait :no_address do
    	address {}
    end

    trait :no_traffic do
    	traffic {}
    end

    trait :no_profile do
    	profile {}
    end

    trait :profile_long do
    	profile { Faker::Lorem.characters(501)}
    end

    trait :no_date do
    	date {}
    end

    trait :past_date do
    	date { date < Date.today }
    end

    trait :no_fes_image_id do
    	fes_image_id {}
    end

  end
end
