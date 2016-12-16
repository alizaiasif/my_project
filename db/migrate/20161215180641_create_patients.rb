class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :cnic
      t.string :contact
      t.text :address

      t.timestamps null: false
    end
  end
end
