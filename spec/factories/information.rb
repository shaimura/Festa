FactoryBot.define do
  factory :information do
  	sequence(:festival_id){ |n| "#{n}"}
    sequence(:message){ |n| "testmessage#{n}"}



    trait :no_festival do
    	festival_id {}
    end

    trait :no_message do
    	message {}
    end

    trait :message_long do
    	message { Faker::Lorem.characters(1001)}
    end

  end
end
