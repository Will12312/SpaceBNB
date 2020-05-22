class RenameColumnInTravels < ActiveRecord::Migration[6.0]
  def change
    rename_column :travels, :number_of_travelers, :seats_available
  end
end
