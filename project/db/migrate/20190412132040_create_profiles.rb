class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :bio
      t.string :country
      t.string :location
      t.string :city
      t.string :picture
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
