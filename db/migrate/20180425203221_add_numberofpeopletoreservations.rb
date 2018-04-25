class AddNumberofpeopletoreservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :number_of_people, :integer
  end
end
