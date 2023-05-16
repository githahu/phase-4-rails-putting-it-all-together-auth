require 'faker'

# Generate 10 fake users
10.times do
  User.create!(
    username: Faker::Internet.unique.username,
    password: Faker::Internet.password(min_length: 8),
    image_url: Faker::Avatar.image,
    bio: Faker::Lorem.sentence
  )
end

