class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :name
      t.string :flavor
      t.integer :magic_number
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
