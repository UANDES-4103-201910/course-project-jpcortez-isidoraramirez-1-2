class CreateAdministrators < ActiveRecord::Migration[5.2]
  def change
    create_table :administrators do |t|
      t.string :name
      t.string :password
      t.string :mail
      t.string :geoference
      t.references :super_admin, foreign_key: true

      t.timestamps
    end
  end
end
