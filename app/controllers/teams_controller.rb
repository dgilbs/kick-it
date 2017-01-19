class TeamsController < ApplicationController


  def new

  end

  def create
  end



  private

  def team_params
    params.require(:user).permit(:name, :league_type, :total_players_needed)
  end
end
