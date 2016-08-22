User.create!(name:  "Example User",
             email: "example@hotmail.com")

5.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@hotmail.com"
  User.create!(name:  name,
               email: email)
end

users = User.order(:created_at).take(5)
5.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end
