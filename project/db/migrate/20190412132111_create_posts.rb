class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :likes
      t.integer :flags
      t.integer :dislikes
      t.string :attachment
      t.string :title
      t.string :body
      t.string :image
      t.references :user, foreign_key: true
      t.references :dumpster, foreign_key: true
      t.references :super_admin, foreign_key: true
      t.references :administrator, foreign_key: true
      t.references :wall, foreign_key: true

      t.timestamps
    end
  end
end
