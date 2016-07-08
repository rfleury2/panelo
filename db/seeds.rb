# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
contest = Contest.find_or_create_by(title: "Best male tennis player of all time")
[
  "Pete Sampras",
  "Roger Federer",
  "Rafael Nadal",
  "Novak Djokovic",
  "Ivan Lendl",
  "John McEnroe",
  "Jimmy Connors",
  "Bjorn Borg",
  "Mats Wilander",
  "Boris Becker",
  "Stefan Edberg",
  "Andre Agassi"
].each do |name|
  contest.players.find_or_create_by(name: name)
end