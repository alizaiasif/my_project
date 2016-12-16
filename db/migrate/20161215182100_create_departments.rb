class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :Name
      t.string :Location

      t.timestamps null: false
    end
  end
end
