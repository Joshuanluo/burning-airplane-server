class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :flight_no
      t.text :origin
      t.text :destination
      t.datetime :date
      t.integer :airline_id

      t.timestamps
    end
  end
end
