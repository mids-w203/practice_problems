class CreateTopics < ActiveRecord::Migration[6.1]
  def change
    create_table :topics do |t|
      t.string :title
      t.references :category, null: false, foreign_key: true
      t.integer :index

      t.timestamps
    end
  end
end
