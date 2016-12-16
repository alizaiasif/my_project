class CreateTratments < ActiveRecord::Migration
  def change
    create_table :tratments do |t|
      t.references :doctor, index: true, foreign_key: true
      t.references :patient, index: true, foreign_key: true
      t.integer :Amount
      t.date :data

      t.timestamps null: false
    end
  end
end
