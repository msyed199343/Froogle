class ChangeStoreItems < ActiveRecord::Migration[5.2]
  def change
    change_column :store_items, :price, :integer
  end
end
