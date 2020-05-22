class AddDepartureDateToTravels < ActiveRecord::Migration[6.0]
  def change
    add_column :travels, :departure_date, :date
  end
end
