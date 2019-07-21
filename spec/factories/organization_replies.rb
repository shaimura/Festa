FactoryBot.define do
  factory :organization_reply do
    sequence(:organization_inquiry_id){ |n| "#{n}"}
    sequence(:admin_id){ |n| "#{n}"}
    sequence(:message){ |n| "testmessage#{n}"}

    trait :no_organization_inquiry do
    	organization_inquiry_id {}
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
