FactoryBot.define do
  factory :order do
    sequence(:present_id){ |n| "#{n}"}
    sequence(:staff_id){ |n| "#{n}"}

    trait :no_present do
    	present_id {}
    end

    trait :no_staff do
    	staff_id {}
    end

  end
end
