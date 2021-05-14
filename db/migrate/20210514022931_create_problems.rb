class CreateProblems < ActiveRecord::Migration[6.1]
  def change
    create_table :problems do |t|
      t.string :title
      t.text :statement
      t.text :solution
      t.integer :index
      t.references :topic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
