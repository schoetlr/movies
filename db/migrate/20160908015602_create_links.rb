class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :url
      t.string :linkable_type
      t.integer :linkable_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
