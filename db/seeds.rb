# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(
  first_name: "Wolfgang",
  last_name: "Mozart",
  email: "ClassicWolfgang@baroque.com",
  phone_number: "555-5555",
  password: "iWaveMyArmsBackandForth"
)
