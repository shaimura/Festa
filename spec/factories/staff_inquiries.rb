FactoryBot.define do
  factory :staff_inquiry do
    sequence(:staff_id){ |n| "#{n}"}
    sequence(:message){ |n| "testmessage#{n}"}

    trait :no_staff do
    	staff_id {}
    end

    trait :no_massage do
    	message {}
    end

    trait :message_long do
    	message { Faker::Lorem.characters(801) }
    end


  end
end
