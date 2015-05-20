class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.string :name
      t.integer :year
      t.text :description
      t.references :resume, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
