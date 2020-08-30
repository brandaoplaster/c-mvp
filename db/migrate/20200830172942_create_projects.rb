class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.references :user, foreign_key: true
      t.string :title, limit: 64
      t.text :description
      t.decimal :target_value, precision: 5, scale: 2
      t.date :end_date

      t.timestamps
    end
  end
end
