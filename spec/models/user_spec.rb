# == Schema Information
#
# Table name: users
#
#  id          :integer          not null, primary key
#  name        :string
#  email       :string
#  position    :string
#  bio         :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  gender      :string
#  skill_level :string
#

require 'rails_helper'
require 'pry'

describe 'User' do 

  it 'can compare two players by saying one is more advanced' do 
    user1 = User.new(skill_level: "Advanced")
    user2 = User.new(skill_level: "Beginner")
    expect(user1.more_skilled_than(user2)).to be
  end

  it 'can compare two players by saying one is less advanced' do 
    user1 = User.new(skill_level: "Advanced")
    user2 = User.new(skill_level: "Beginner")
    expect(user1.less_skilled_than(user2)).not_to be
  end

  it 'can see if two players are equal' do
    user1 = User.new(skill_level: "Intermediate")
    user2 = User.new(skill_level: "Intermediate")
    expect(user1.same_skill_level_as(user2)).to be
  end

  it 'can group players by skill_level' do
    user1 = User.create(skill_level: "Advanced")
    user2 = User.create(skill_level: "Beginner")
    user3 = User.create(skill_level: "Intermediate")
    expect(User.advanced_players).to include(user1)
    expect(User.advanced_players).to_not include(user2)
    expect(User.intermediate_players).to include(user3)
    expect(User.intermediate_players).to_not include(user1)
    expect(User.beginner_players).to include(user2)
    expect(User.beginner_players).to_not include(user1)
  end

  it 'can join a team' do 
    user1 = User.create()
    team1 = Team.create()
    team2 = Team.create
    user1.jointeam(team1)
    expect(user1.teams).to include(team1)
    expect(user1.teams).to_not include(team2)
  end
    
  it 'can know who his/her teammates are' do
    user1 = User.create()
    user2 = User.create()
    user3 = User.create()
    team = Team.create()
    user1.jointeam(team)
    user2.jointeam(team)
    expect(user1.teammates).to include(user2)
    expect(user2.teammates).to include(user1)
    expect(user1.teammates).to_not include(user3)
    expect(user2.teammates).to_not include(user3)
    expect(user1.teammates).to_not include(user1)
  end

end
