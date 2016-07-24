# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake dbseed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
jacob_francis = User.create({
  nickname: "Jake",
  password: "skillmaster1",
  fname: "Jacob",
  lname: "Francis",
  email: "jf@skillmaster.fake",
  points: 200
})

Sport.destroy_all
soccer = Sport.create({name: "soccer"})
