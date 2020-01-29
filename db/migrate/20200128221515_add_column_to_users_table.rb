class AddColumnToUsersTable < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :search_criteria, :string
    add_column :users, :item, :string
  end
end
