class CreateTravels < ActiveRecord::Migration[6.0]
  def change
    create_table :travels do |t|

      t.string :destination
      t.integer :number_of_travelers
      t.string :departure_date
      t.string :name_of_vehicle

      t.timestamps
    end
    add_column :travels, :organiser_id, :integer
    add_index  :travels, :organiser_id
  end
end
