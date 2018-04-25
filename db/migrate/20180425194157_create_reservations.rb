class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :restaurant_id
      t.date :date
      t.time :time
      t.text :notes
      t.timestamps
    end
  end
end
