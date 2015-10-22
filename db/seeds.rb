# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


10.times do
  Member.create!(name: Faker::Name.name, email: Faker::Internet.email, password_digest: Faker::Internet.password(6))
end

 members = Member.all

Question.create!(member_id: 1, title: "how to bake a cake?", description: "I have apologies to make. Help me.")
Question.create!(member_id: 2, title: "why are my hands stuck together?", description: "I don't know what happened but I need it undone.")
Question.create!(member_id: 3, title: "who framed roger rabbit?", description: "is this movie biographical?")
