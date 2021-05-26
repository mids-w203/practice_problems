class AddPictureToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :picture, :string
  end
end
