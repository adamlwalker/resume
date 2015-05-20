class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :employer
      t.string :startend
      t.string :jobtitle
      t.text :jobdescription
      t.integer :order
      t.references :resume, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
