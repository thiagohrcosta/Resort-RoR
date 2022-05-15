class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.integer :quantity
      t.integer :bed
      t.integer :bathroom
      t.decimal :price
      t.string :description

      t.timestamps
    end
  end
end
