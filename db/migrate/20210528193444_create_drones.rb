class CreateDrones < ActiveRecord::Migration[6.1]
  def change
    create_table :drones do |t|
      t.string :image
      t.string :model
      t.string :location
      t.string :category

      t.timestamps
    end
  end
end
