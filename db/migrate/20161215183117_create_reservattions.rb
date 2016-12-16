class CreateReservattions < ActiveRecord::Migration
  def change
    create_table :reservattions do |t|
      t.date :date
      t.references :patient, index: true, foreign_key: true
      t.references :room, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
