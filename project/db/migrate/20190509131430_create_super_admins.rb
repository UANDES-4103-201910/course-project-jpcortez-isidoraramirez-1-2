class CreateSuperAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :super_admins do |t|
      t.string :name
      t.string :password
      t.string :mail

      t.timestamps
    end
  end
end
