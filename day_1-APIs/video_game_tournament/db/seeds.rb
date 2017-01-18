# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Tournament.create(name: 'Roland Garros')
Tournament.create(name: 'Unreal T')

Player.create(name: 'Carlos')
Player.create(name: 'Dani')
Player.create(name: 'Jose')

Registration.create(player_id: 1, tournament_id: 1)
Registration.create(player_id: 1, tournament_id: 2)
Registration.create(player_id: 22, tournament_id: 2)
