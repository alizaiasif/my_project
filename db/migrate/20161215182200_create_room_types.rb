class CreateRoomTypes < ActiveRecord::Migration
  def change
    create_table :room_types do |t|
      t.integer :Price
      t.string :room_type

      t.timestamps null: false
    end
  end
end
