# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


  User.create(name: "Jozy Altidore", email: "jaltidore@kickitmail.com", position: "Forward", gender: "Male")
  User.create(name: "Alex Morgan", email: "amorgan@kickitmail.com", position: "Forward", gender: "Female")
  User.create(name: "Christian Pulisic", email: "cpulisic@kickitmail.com", position: "Midfielder", gender: "Male")
  User.create(name: "Megan Rapinoe", email: "mrapinoe@kickitmail.com", position: "Midfielder", gender: "Female")
  User.create(name: "Matt Besler", email: "mbesler@kickitmail.com", position: "Defender", gender: "Male")
  User.create(name: "Becky Sauerbrunn", email: "bsauerbrunn@kickitmail.com", position: "Defender", gender: "Female")
  User.create(name: "Tim Howard", email: "thoward@kickitmail.com", position: "Goalkeeper", gender: "Male")
  User.create(name: "Hope Solo", email: "hsolo@kickitmail.com", position: "Goalkeeper", gender: "Female")

  Team.create(name: "Green Eggs and Mia Hamm", league_type: "Coed")
  Team.create(name: "Rooney Tunes", league_type: "Coed")
  Team.create(name: "Bale of Hay", league_type: "Coed")
  Team.create(name: "Playing Footsie", league_type: "Coed")

  UserTeam.create(user_id: 1, team_id: 1)
  UserTeam.create(user_id: 1, team_id: 2)
  UserTeam.create(user_id: 2, team_id: 3)
  UserTeam.create(user_id: 2, team_id: 4)
  UserTeam.create(user_id: 3, team_id: 1)
  UserTeam.create(user_id: 3, team_id: 2)
  UserTeam.create(user_id: 4, team_id: 3)
  UserTeam.create(user_id: 4, team_id: 4)
  UserTeam.create(user_id: 5, team_id: 4)
  UserTeam.create(user_id: 5, team_id: 3)
  UserTeam.create(user_id: 6, team_id: 2)
  UserTeam.create(user_id: 6, team_id: 1)
  UserTeam.create(user_id: 7, team_id: 4)
  UserTeam.create(user_id: 7, team_id: 3)
  UserTeam.create(user_id: 8, team_id: 2)
  UserTeam.create(user_id: 8, team_id: 1)

