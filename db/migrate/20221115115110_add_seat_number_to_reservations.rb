class AddSeatNumberToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :seat_number, :text
  end
end
