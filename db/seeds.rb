User.delete_all
Group.delete_all

5.times do |id|
  User.create(username: Faker::Internet.user_name, email: Faker::Internet.email, password: "password")

  Group.create(group: Faker::Job.field, description: Faker::Lorem.sentence, user_id: id+1)
end