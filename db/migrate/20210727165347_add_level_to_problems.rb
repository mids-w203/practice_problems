class AddLevelToProblems < ActiveRecord::Migration[6.1]
  def change
    add_reference :problems, :level, null: false, default: 1, foreign_key: true
  end
end
