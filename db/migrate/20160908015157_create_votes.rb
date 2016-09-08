class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :voteable_type
      t.string :voteable_id
      t.string :user_id

      t.timestamps null: false
    end

    add_index :votes, [:voteable_type, :voteable_id]
  end
end
