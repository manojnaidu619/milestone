class AddCoordinatorIdToAvatars < ActiveRecord::Migration[5.2]
  def change
    add_column :avatars, :coordinator_id, :integer
  end
end
