class AddCoordinatorIdToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :coordinator_id, :integer
  end
end
