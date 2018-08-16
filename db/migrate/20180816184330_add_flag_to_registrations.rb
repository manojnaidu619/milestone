class AddFlagToRegistrations < ActiveRecord::Migration[5.2]
  def change
    add_column :registrations, :flag, :string
  end
end
