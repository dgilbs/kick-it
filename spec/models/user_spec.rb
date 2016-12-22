# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  position   :string
#  bio        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  gender     :string
#

require 'rails_helper'
require 'pry'

describe 'User' do 

  it 'can find players of a certain gender' do 
    binding.pry
  end

end
