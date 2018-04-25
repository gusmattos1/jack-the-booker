class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.integer :user_id
      t.string :name
      t.string :address
      t.integer :capacity
      t.integer :cost
      t.text :summary
      t.text :menu
      t.time :opening_hour
      t.time :closing_hour
      t.timestamps
    end
  end
end
