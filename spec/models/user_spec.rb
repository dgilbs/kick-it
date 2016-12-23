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

end
