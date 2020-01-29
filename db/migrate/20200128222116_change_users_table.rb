class ChangeUsersTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :item
    add_column :users, :store_item_id, :integer
  end
end
