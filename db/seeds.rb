# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

games = [{ teams: [{ name: 'Bulls', player_names: 'Danny, Benn', score: 812 },
{ name: 'Spurs', player_names: 'Logan, Ben', score: 56 }] },
{ teams: [{ name: 'Celtics', player_names: 'Brian, Paul', score: 34 },
{ name: 'Spurs', player_names: 'Rachel, Helen', score: 10000 }] },
{ teams: [{ name: 'Lakers', player_names: 'Nick, Liz', score: 92 },
{ name: 'Knicks', player_names: 'Bryant, Dave', score: 786 }] }]

puts 'Seeding 3 games...'

games.each do |game_attrs|
game = Game.create
game_attrs[:teams].each do |team_attrs|
team = Team.new(team_attrs)
team.game = game
team.save
end
end

puts 'Done.'
