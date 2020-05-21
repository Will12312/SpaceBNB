class CreateTravels < ActiveRecord::Migration[6.0]
  def change
    create_table :travels do |t|

      t.string :destination
      t.integer :seats_available
      t.integer :people_onboard, default: 0
      t.string :departure_date
      t.string :name_of_vehicle
      t.integer :price

      t.timestamps
    end
    add_column :travels, :organiser_id, :integer
    add_index  :travels, :organiser_id
  end
end
