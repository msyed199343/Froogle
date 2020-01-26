class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username, Null: false
      t.string :password_digest, Null: false

      t.index
    end
    t.timestamps
  end
end
