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

def seed_presidents
  contest = Contest.find_or_create_by(title: "Best president of the United States")
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
