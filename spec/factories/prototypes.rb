FactoryBot.define do
  factory :prototype do
    association :user 
    name           { Faker::Name.name }
    recommendation { Faker::Lorem.sentence }
    explanation    {Faker::Lorem.sentence}
    category_id    { Faker::Number.between(from: 2, to: 8) }
    after(:build) do |message|
      message.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end