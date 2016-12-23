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
  
end
