User.delete_all
Group.delete_all
Skill.delete_all

5.times do |id|
  name = Faker::Name.first_name
  User.create(username: name, email: "#{name}@#{name}.com", password: "password")

  Group.create(group: Faker::Job.field, description: Faker::Lorem.sentence, user_id: id+1)

  Skill.create(skill: Faker::Job.key_skill, description: Faker::Lorem.sentence, data: Faker::Number.decimal(2), measurement_unit: Faker::Science.element, group_id: id+1)
end

joey = User.new(username: "joey", email: "joey@joey.com", password: "joey")
joey.save

5.times do
  group = Group.new(group: Faker::Job.field, description: Faker::Lorem.sentence, user: joey)
  group.save

  Skill.create(skill: Faker::Job.key_skill, description: Faker::Lorem.sentence, data: Faker::Number.decimal(2), measurement_unit: Faker::Science.element, group: group)
end