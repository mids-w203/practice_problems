class CreateSolvedProblems < ActiveRecord::Migration[6.1]
  def change
    create_table :solved_problems do |t|
      t.references :user, null: false, foreign_key: true
      t.references :problem, null: false, foreign_key: true

      t.timestamps
    end
    add_index :solved_problems, [:user_id, :problem_id], unique: true
  end
end
