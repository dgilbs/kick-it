class AddSkillLevelToUser < ActiveRecord::Migration
  def change
    add_column :users, :skill_level, :string
  end
end
