# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = User.create([
 {name: 'Paul Atreides',  email: 'paul@arrakis.com', password: 'ironhack', password_confirmation: 'ironhack'},
 {name: 'Alia Atreides',  email: 'alia@arrakis.com',  password: 'ironhack', password_confirmation: 'ironhack'},
 {name: 'Leto Atreides', email: 'leto@arrakis.com',  password: 'ironhack', password_confirmation: 'ironhack'}
])

tasks = Task.create([
 {name: 'Task 1 for Ian',      due_date: DateTime.now, user_id: users[0].id},
 {name: 'Task 2 for Ian',      due_date: DateTime.now, user_id: users[0].id},
 {name: 'Task 1 for Henry',  due_date: DateTime.now, user_id: users[1].id},
 {name: 'Task 2 for Henry',  due_date: DateTime.now, user_id: users[1].id},
 {name: 'Task 1 for Glenn',  due_date: DateTime.now, user_id: users[2].id},
 {name: 'Task 2 for Glenn',  due_date: DateTime.now, user_id: users[2].id}
])
