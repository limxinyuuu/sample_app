User.create!(name:  "Lim Xin Yu",
             email: "limxinyuuu@gmail.com",
             admin: true)

#User.create!(name:  "Hong Rilong",
#             email: "rilong18588@gmail.com",
#             admin: true)

5.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@hotmail.com"
  User.create!(name:  name,
               email: email)
end

users = User.order(:created_at).take(6)
5.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end
