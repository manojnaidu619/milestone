class AddCoordinatorIdToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :coordinator_id, :integer
  end
end
