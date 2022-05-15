class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.references :room, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.decimal :final_price
      t.datetime :start_date
      t.datetime :end_date
      t.integer :adults

      t.timestamps
    end
  end
end
