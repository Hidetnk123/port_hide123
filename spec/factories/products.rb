FactoryBot.define do
  factory :product do
    text              { Faker::Lorem.word }
    genre_id          { Faker::Number.between(from: 2, to: 11) }

    after(:build) do |product|
      product.images.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end

    association :user
  end
end