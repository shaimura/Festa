FactoryBot.define do
  factory :staff_reply do
    sequence(:staff_inquiry_id){ |n| "#{n}"}
    sequence(:admin_id){ |n| "#{n}"}
    sequence(:message){ |n| "testmessage#{n}"}

    trait :no_staff_inquiry do
    	staff_inquiry_id {}
    end

    trait :no_admin do
        admin_id {}
    end

    trait :no_massage do
    	message {}
    end

    trait :message_long do
    	message { Faker::Lorem.characters(801) }
    end
  end
end
