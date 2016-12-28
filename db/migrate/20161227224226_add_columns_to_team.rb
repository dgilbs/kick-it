class AddColumnsToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :league_type, :string
    add_column :teams, :total_players_needed, :integer
  end
end
