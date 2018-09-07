# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



user1 = User.create(username: 'carly')
user2 = User.create(username: 'alice')
user3 = User.create(username: 'schaaf')
user4 = User.create(username: 'jeremiah')
user5 = User.create(username: 'aj')

p1 = Poll.create(title: 'Favorites',user_id: user1.id)
p2 = Poll.create(title: 'Bests',user_id: user4.id)

q1 = Question.create(content: 'Favorite dog?',poll_id: p1.id)
q2 = Question.create(content: 'Favorite cat?',poll_id: p1.id)
# q3 = Question.create(content: 'Favorite fish?', p1.id)

q4 = Question.create(content: 'Best day of the week?',poll_id: p2.id)
q5 = Question.create(content: 'Best season of the year?',poll_id: p2.id)
# q6 = Question.create(content: 'Best bird?', p2.id)

a1_1 = AnswerChoice.create(question_id: q1.id, answer: 'Corgi')
a1_2 = AnswerChoice.create(answer: 'Shibainu', question_id: q1.id)

a2_1 = AnswerChoice.create(answer: 'Ragdoll', question_id: q2.id)
a2_2 = AnswerChoice.create(answer: 'Domestic Shorthair', question_id: q2.id)

a3_1 = AnswerChoice.create(answer: 'Friday', question_id: q4.id)
a3_2 = AnswerChoice.create(answer: 'Friday', question_id: q4.id)

a4_1 = AnswerChoice.create(answer: 'Summer', question_id: q5.id)
a4_2 = AnswerChoice.create(answer: 'Spring', question_id: q5.id)

r1 = Response.create(answer_choice_id: a1_2.id, user_id: user2.id)
r2 = Response.create(answer_choice_id: a3_2.id, user_id: user1.id)
