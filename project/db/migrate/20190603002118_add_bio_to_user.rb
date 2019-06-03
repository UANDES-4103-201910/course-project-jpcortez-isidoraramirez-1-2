class AddBioToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :bio, :string
    add_index :users, :bio, unique: true
  end
end
