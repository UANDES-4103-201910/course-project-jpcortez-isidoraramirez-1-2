class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :mail
      t.string :name
      t.string :password
      t.references :blacklist, foreign_key: true
      t.references :super_admin, foreign_key: true
      t.references :administrator, foreign_key: true

      t.timestamps
    end
  end
end
