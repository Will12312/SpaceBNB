class ChangeDataTypeForDepartureDate < ActiveRecord::Migration[6.0]
  def change
    change_column :travels, :departure_date, :date, using: 'departure_date::date'
  end
end
