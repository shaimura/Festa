FactoryBot.define do
  factory :match do
    sequence(:festival_id){ |n| "#{n}"}
    sequence(:staff_id){ |n| "#{n}"}

    trait :no_festival do
    	festival_id {}
    end

    trait :no_staff do
    	staff_id {}
    end

  end
end
