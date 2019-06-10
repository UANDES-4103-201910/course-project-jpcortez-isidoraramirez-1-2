class AddUsernameToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string, default: "new_user"
    add_index :users, :username, unique: true
  end
end
