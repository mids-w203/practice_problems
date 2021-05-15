class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :name
      t.text :body
      t.references :parent, null: true, foreign_key: { to_table: :comments }
      t.references :problem, null: false, foreign_key: true

      t.timestamps
    end
  end
end
