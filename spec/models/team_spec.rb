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

require 'rails_helper'

describe 'Team' do 

  it 'can have a list of player names' do
    user1 = User.create(name: "Danny")
    user2 = User.create(name: "Joey")
    user3 = User.create(name: "Bobby")
    team = Team.create
    user1.jointeam(team)
    user2.jointeam(team)
    expect(team.roster).to include("Danny")
    expect(team.roster).to include("Joey")
    expect(team.roster).to_not include("Bobby")
  end
  
end
