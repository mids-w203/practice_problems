class AddExtraToCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :extra, :text
  end
end
