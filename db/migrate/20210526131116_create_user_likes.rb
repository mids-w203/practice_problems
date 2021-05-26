class CreateUserLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :user_likes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :likable, null: false, polymorphic: true

      t.timestamps
    end
    add_index :user_likes, [:user_id, :likable_type, :likable_id], unique: true
  end
end
