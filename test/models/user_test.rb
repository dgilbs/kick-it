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

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
