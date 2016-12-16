class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.text :Address
      t.string :cnic
      t.string :contact
      t.references :department, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
