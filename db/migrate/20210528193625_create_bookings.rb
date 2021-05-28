class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.integer :drone_id
      t.string :from_address
      t.string :to_address 
      t.timestamps
    end
  end
end
