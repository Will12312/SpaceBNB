class RemoveDepartureDateFromTravels < ActiveRecord::Migration[6.0]
  def change
    remove_column :travels, :departure_date, :string
  end
end
