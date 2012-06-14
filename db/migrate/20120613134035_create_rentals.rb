class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.date :taking_on
      t.date :given_on
      t.integer :movie_id

      t.timestamps
    end
  end
end
