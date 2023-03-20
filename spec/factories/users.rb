FactoryBot.define do
  factory :user do
    nickname              {Faker::Name.initials(number: 2)}
    year_id  { Faker::Number.between(from: 2, to: 7) }
    skin_id  { Faker::Number.between(from: 2, to: 5) }  
    email                 {Faker::Internet.free_email}
    password              {Faker::Internet.password(min_length: 6)}
    password_confirmation {password}

  end
end