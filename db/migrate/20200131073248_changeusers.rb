class Changeusers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :search_criteria
    remove_column :users, :store_item_id
    add_column :users, :session_token, :string, null: false
    add_index :users, :session_token, unique: true
    add_index :users, :username, unique: true
  end
  
end
