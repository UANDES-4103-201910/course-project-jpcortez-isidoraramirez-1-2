class AddSuperToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :super, :boolean
  end
end
