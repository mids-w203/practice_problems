class CreateLevels < ActiveRecord::Migration[6.1]
  def change
    create_table :levels do |t|
      t.string :name, null: false

      t.timestamps
    end
    add_index :levels, :name, unique: true
  end
end
