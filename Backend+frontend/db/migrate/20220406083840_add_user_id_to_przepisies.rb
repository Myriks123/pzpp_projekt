class AddUserIdToPrzepisies < ActiveRecord::Migration[7.0]
  def change
    add_column :przepisies, :user_id, :integer
    add_index :przepisies, :user_id
  end
end
