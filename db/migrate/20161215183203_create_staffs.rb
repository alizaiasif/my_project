class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :resignation
      t.references :room_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
