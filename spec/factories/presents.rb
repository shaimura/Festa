FactoryBot.define do
  factory :present do
    sequence(:present){ |n| "testpresent#{n}"}
    sequence(:present_image_id){ |n| "#{n}.jpg"}

    trait :no_present do
    	present {}
    end

    trait :no_present_image_id do
    	present_image_id {}
    end

  end
end
