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

  # def compare_skills_with(other_user)
  #   ["Beginner", "Lower Intermediate", "Intermediate", "High Intermediate", "Advanced"]

  # end

  def more_skilled_than(user)
    hash = {beginner: 1, low_intermediate:2, 
      intermediate: 3, high_intermediate: 4, advanced: 5}
    user1_skill = self.skill_level.downcase
    user2_skill = user.skill_level.downcase
    hash[user1_skill.to_sym] > hash[user2_skill.to_sym]
  end

  def less_skilled_than(user)
    hash = {beginner: 1, low_intermediate:2, 
      intermediate: 3, high_intermediate: 4, advanced: 5}
    user1_skill = self.skill_level.downcase
    user2_skill = user.skill_level.downcase
    hash[user1_skill.to_sym] < hash[user2_skill.to_sym]
  end

  def same_skill_level_as(user)
    hash = {beginner: 1, low_intermediate:2, 
      intermediate: 3, high_intermediate: 4, advanced: 5}
    user1_skill = self.skill_level.downcase
    user2_skill = user.skill_level.downcase
    hash[user1_skill.to_sym] == hash[user2_skill.to_sym]
  end
  
end
