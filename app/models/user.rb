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


class User < ActiveRecord::Base
  has_many :user_teams
  has_many :teams, through: :user_teams


  def more_skilled_than(user)
    hash = {beginner: 1, low_intermediate:2, 
      intermediate: 3, high_intermediate: 4, advanced: 5}
    hash[self.skill_level.downcase.to_sym] > hash[user.skill_level.downcase.to_sym]
  end

  def less_skilled_than(user)
    hash = {beginner: 1, low_intermediate:2, 
      intermediate: 3, high_intermediate: 4, advanced: 5}
    hash[self.skill_level.downcase.to_sym] < hash[user.skill_level.downcase.to_sym]
  end

  def same_skill_level_as(user)
    hash = {beginner: 1, low_intermediate:2, 
      intermediate: 3, high_intermediate: 4, advanced: 5}
    hash[self.skill_level.downcase.to_sym] == hash[user.skill_level.downcase.to_sym]
  end

  def self.advanced_players
    self.where(skill_level:"Advanced")
  end

  def self.intermediate_players
    self.where(skill_level:"Intermediate")
  end

  def self.beginner_players
    self.where(skill_level:"Beginner")
  end

  def jointeam(team)
    self.teams.push(team)
  end

  def teammates
    arr = self.teams.map{|t| t.roster}.flatten
    arr = arr.uniq
    arr.select{|player| player != self}
  end

  
end
