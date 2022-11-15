class ChangeAirlineIdToAirplaneId < ActiveRecord::Migration[5.2]
  def change
    rename_column :flights, :airline_id, :airplane_id
  end
end
