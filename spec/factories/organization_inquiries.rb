FactoryBot.define do
  factory :organization_inquiry do
    sequence(:organization_id){ |n| "#{n}"}
    sequence(:message){ |n| "testmessage#{n}"}

    trait :no_organization do
    	organization_id {}
    end

    trait :no_massage do
    	message {}
    end

    trait :message_long do
    	message { Faker::Lorem.characters(801) }
    end

  end
end
