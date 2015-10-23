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

Answer.create!(member_id: 1, question_id: 1, accepted_answer: true, answer_text: "Yes, you can do that but dont forget to add milk on it!")
Answer.create!(member_id: 2, question_id: 2, accepted_answer: false, answer_text: "I would push the cats off the wall first then buy some dogs.")
Answer.create!(member_id: 3, question_id: 3, accepted_answer: true, answer_text: "No! Never give up on your Dreams unless the are nightmares!")
Answer.create!(member_id: 4, question_id: 4, accepted_answer: true, answer_text: "Yes, but what bro doesn't!?")
Answer.create!(member_id: 5, question_id: 5, accepted_answer: false, answer_text: "Yes, you and your bike can do anything your heart desires.")
Answer.create!(member_id: 6, question_id: 6, accepted_answer: true, answer_text: "Yes, Bruce Lee says we should be water, Bruce Lee is good for the soul, therefor water is good for the soul.")
Answer.create!(member_id: 7, question_id: 7, accepted_answer: true, answer_text: "Yes, what we watch is just an interpretation of actual history, some fact have been lost through time.")
Answer.create!(member_id: 8, question_id: 8, accepted_answer: false, answer_text: "Yes, by definition, you must have cats.")




answers = Answer.all

Question.create!(member_id: 1, title: "Wow to bake a cake?", description: "I have apologies to make. Help me.")
Question.create!(member_id: 2, title: "Why are my hands stuck together?", description: "I don't know what happened but I need it undone.")
Question.create!(member_id: 3, title: "Who framed roger rabbit?", description: "is this movie biographical?")
Question.create!(member_id: 4, title: "Do you even lift bro?", description: "I like to workout every day!")
Question.create!(member_id: 5, title: "Can you travel to China in on a bike from America?", description: "I love my bike and dont want to travel without it.")
Question.create!(member_id: 6, title: "Is swimming good for the soul?", description: "I want to swim more but is it good for the soul?")
Question.create!(member_id: 7, title: "Did Star Wars actually happen and are we now watching history?", description: "Blows my mind!")
Question.create!(member_id: 8, title: "Do you have to have cats to be a cat lady?", description: "I want to be a cat lady but don't want cats.")

questions = Question.all
