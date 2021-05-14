class AddLikesToProblems < ActiveRecord::Migration[6.1]
  def change
    add_column :problems, :likes, :integer
  end
end
