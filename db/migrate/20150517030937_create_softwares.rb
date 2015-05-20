class CreateSoftwares < ActiveRecord::Migration
  def change
    create_table :softwares do |t|
      t.string :name
      t.float :level
      t.references :resume, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
