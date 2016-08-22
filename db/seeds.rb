User.create!(name:  "Lim Xin Yu",
             email: "limxinyuuu@gmail.com",
             admin: true)

User.create!(name:  "Hong Rilong",
             email: "rilong18588@gmail.com",
             admin: true)

User.create!(name:  "Pua Chuey Hong",
             email: "emilypua@hotmail.com")

20.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@hotmail.com"
  User.create!(name:  name,
               email: email)
end

Blogpost.create!(name:  "Pua Chuey Hong",
                 content: "Congratulations on the big day!")

5.times do |n|
  name = Faker::Name.name
  content = Faker::Lorem.sentence(5)
  Blogpost.create!(name: name,
                   content: content)
end
