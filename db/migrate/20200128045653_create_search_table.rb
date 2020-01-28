class CreateSearchTable < ActiveRecord::Migration[5.2]
  def change
    create_table :search_tables do |t|
      t.string :search_criteria, null: false
      t.integer :item_id, null: false
    end
  end
end
