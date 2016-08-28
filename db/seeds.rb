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

Skill.destroy_all
dribbling = Skill.create({name: "Dribbling", sport_id: soccer.id})
penalties = Skill.create({name: "Penalties", sport_id: soccer.id})
passing = Skill.create({name: "Passing", sport_id: soccer.id})
dribbling2 = Skill.create({name: "Dribbling 2", sport_id: soccer.id})
passing2 = Skill.create({name: "Passing 2", sport_id: soccer.id})
hat_tricks = Skill.create({name: "Hat Tricks", sport_id: soccer.id})

Lesson.destroy_all
dribbling_lesson_1 = Lesson.create({name: "How to dribble 101", skill_id: dribbling.id})
dribbling_lesson_2 = Lesson.create({name: "Continuing dribbling practice", skill_id: dribbling.id})
dribbling_lesson_3 = Lesson.create({name: "Being great at dribbling", skill_id: dribbling.id})
dribbling_lesson_4 = Lesson.create({name: "Dribbling as meditation", skill_id: dribbling.id})
dribbling_lesson_5 = Lesson.create({name: "Dribbling, dribbling, dribbling!", skill_id: dribbling.id})
