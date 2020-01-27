class CreateStoreItems < ActiveRecord::Migration[5.2]
  def change
    create_table :store_items do |t|
      t.string :name, null: false
      t.decimal :price, null: false, precision: 10, scale: 2

      t.timestamps
    end
  end
end
