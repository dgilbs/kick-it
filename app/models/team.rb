# == Schema Information
#
# Table name: teams
#
#  id                   :integer          not null, primary key
#  name                 :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  league_type          :string
#  total_players_needed :integer
#

class Team < ActiveRecord::Base
  has_many :user_teams
  has_many :users, through: :user_teams
end
