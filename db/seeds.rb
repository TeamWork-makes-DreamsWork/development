# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


25.times do
  Member.create!(name: Faker::Name.name, email: Faker::Internet.email, password_digest: Faker::Internet.password(6))
end

 members = Member.all

50.times do
  Question.create!(member_id: rand(1..25), title: Faker::Lorem.sentence.chomp('.') + ('?'), description: Faker::Lorem.paragraph)
end
 questions = Question.all

50.times do
  Answer.create!(member_id: rand(1..25), question_id: rand(1..50), accepted_answer: false, answer_text: Faker::Lorem.paragraph(2))
end
answers = Answer.all

table = ["Answer", "Question"]
10.times do
  Vote.create!(member_id: rand(10), vote: rand(2), vote_for_id: rand(10), vote_for_type: table[rand(2)])
end

votes = Vote.all
