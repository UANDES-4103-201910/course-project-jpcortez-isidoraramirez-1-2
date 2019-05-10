class CreateDumpsters < ActiveRecord::Migration[5.2]
  def change
    create_table :dumpsters do |t|
      t.references :super_admin, foreign_key: true
      t.references :administrator, foreign_key: true

      t.timestamps
    end
  end
end
