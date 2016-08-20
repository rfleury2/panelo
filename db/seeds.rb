# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
contest = Contest.find_or_create_by(title: "Who is the greatest male tennis player of all time?", category: "sports")
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

def seed_presidents
  contest = Contest.find_or_create_by(title: "Who is the greatest president of the United States?", category: "history")
  [
    "George Washington",
    "John Adams",
    "Thomas Jefferson",
    "James Madison",
    "James Monroe",
    "John Quincy Adams",
    "Andrew Jackson",
    "Martin Van Buren",
    "William Henry Harrison",
    "John Tyler",
    "James K. Polk",
    "Zachary Taylor",
    "Millard Fillmore",
    "Franklin Pierce",
    "James Buchanan",
    "Abraham Lincoln",
    "Andrew Johnson",
    "Ulysses S. Grant",
    "Rutherford B. Hayes",
    "James A. Garfield",
    "Chester A. Arthur",
    "Grover Cleveland",
    "Benjamin Harrison",
    "William McKinley",
    "Theodore Roosevelt",
    "William Howard Taft",
    "Woodrow Wilson",
    "Warren G. Harding",
    "Calvin Coolidge",
    "Herbert Hoover",
    "Franklin D. Roosevelt",
    "Harry S. Truman",
    "Dwight D. Eisenhower",
    "John F. Kennedy",
    "Lyndon B. Johnson",
    "Richard Nixon",
    "Gerald Ford",
    "Jimmy Carter",
    "Ronald Reagan",
    "George H. W. Bush",
    "Bill Clinton",
    "George W. Bush",
    "Barack Obama"
  ].each do |name|
    contest.players.find_or_create_by(name: name)
  end  
end
seed_presidents

contest = Contest.find_or_create_by(title: "Who is the greatest female tennis player of all time?", category: "sports")
[
  "Serena Williams",
  "Venus Williams",
  "Chris Every",
  "Martina Hingis",
  "Martina Navratilova",
  "Billy Jean King",
  "Maria Esther Bueno",
  "Lindsay Davenport",
  "Monica Seles",
  "Steffi Graf",
  "Justine Henin"
].each do |name|
  contest.players.find_or_create_by(name: name)
end

contest = Contest.find_or_create_by(title: "What team is the greatest Champions League winner of all time?", category: "sports")
[
  "Real Madrid - 2016",
  "Barcelona - 2015",
  "Real Madrid - 2014",
  "Barcelona - 2013",
  "Chelsea - 2012",
  "Barcelona - 2011",
  "Internazionale - 2010",
  " - 2009",
  " - 2008",
  "Milan - 2007",
  "Liverpool - 2006",
  " - 2005",
  " - 2004",
  "Milan - 2003"
].each do |name|
  contest.players.find_or_create_by(name: name)
end

contest = Contest.find_or_create_by(title: "Who is the greatest Oscar-winning male leading actor of the modern era?", category: "movies")
[
  "Tom Hanks",
  "Russell Crowe"
].each do |name|
  contest.players.find_or_create_by(name: name)
end

contest = Contest.find_or_create_by(title: "Who is the greatest Oscar-winning female leading actor of the modern era?", category: "movies")
[
  "Tom Hanks",
  "Russell Crowe"
].each do |name|
  contest.players.find_or_create_by(name: name)
end

contest = Contest.find_or_create_by(title: "What is the greatest Oscar-winning movie of the modern era?", category: "movies")
[
  "Shakespeare in Love",
  "Crash"
].each do |name|
  contest.players.find_or_create_by(name: name)
end

contest = Contest.find_or_create_by(title: "Who is the greatest rock'n'roll guitarrist of all time?", category: "music")
[
  "Eric Clapton",
  "B.B. King"
].each do |name|
  contest.players.find_or_create_by(name: name)
end

contest = Contest.find_or_create_by(title: "Who is the greatest X-Men character?", category: "comics")
[
  "Wolverine",
  "Cyclops"
].each do |name|
  contest.players.find_or_create_by(name: name)
end

contest = Contest.find_or_create_by(title: "Who is the greatest music duo of all time?", category: "music")
[
  "Sonny and Cher",
  "Simon and Garfunkel"
].each do |name|
  contest.players.find_or_create_by(name: name)
end

contest = Contest.find_or_create_by(title: "What was the greatest sitcom of the 90s?", category: "television")
[
  "Seinfeld",
  "Frasier"
].each do |name|
  contest.players.find_or_create_by(name: name)
end

contest = Contest.find_or_create_by(title: "What is the greatest animated series of all time?", category: "television")
[
  "The Simpsons",
  "South Park"
].each do |name|
  contest.players.find_or_create_by(name: name)
end