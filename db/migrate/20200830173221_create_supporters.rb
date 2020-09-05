class CreateSupporters < ActiveRecord::Migration[5.2]
  def change
    create_table :supporters do |t|
      t.references :user, foreign_key: true
      t.references :project, foreign_key: true
      t.decimal :donated_amount, precision: 5, scale: 2

      t.timestamps
    end
  end
end
