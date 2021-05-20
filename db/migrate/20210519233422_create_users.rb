class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :full_name, null: false
      t.string :provider
      t.string :uid
      t.string :nickname
      t.string :email
      t.boolean :instructor, default: false

      t.timestamps
    end
  end
end
