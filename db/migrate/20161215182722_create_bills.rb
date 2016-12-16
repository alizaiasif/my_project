class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.integer :Tratment_Amount
      t.integer :room_amount
      t.integer :total
      t.references :patient, index: true, foreign_key: true
      t.references :tratment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
