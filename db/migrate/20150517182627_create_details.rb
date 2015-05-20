class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.text :summary
      t.text :about
      t.text :extra
      t.references :resume, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
