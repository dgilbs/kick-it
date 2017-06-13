class CreateUserPositions < ActiveRecord::Migration
  def change
    create_table :user_positions do |t|
      t.integer :position_id
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
